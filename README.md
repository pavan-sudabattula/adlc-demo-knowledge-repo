# ShopFlow — ADLC Multi-Repo Demo

This is the **umbrella / knowledge repo** for the ShopFlow demo platform. It doesn't
contain application code itself — it ties together the five sibling repositories
into a single VS Code workspace and documents how the system fits together and how
to run it.

> ShopFlow is a deliberately small e-commerce platform split across multiple
> repositories. Its purpose is to demonstrate how a **shared contracts** package
> sits at the centre of a multi-repo system and how a change to those contracts
> ripples out across the services that depend on them.

---

## The repositories

| Repo | Role | Stack | Port |
|------|------|-------|------|
| [adlc-demo-shared-contracts](https://github.com/pavan-sudabattula/adlc-demo-shared-contracts) | The single source of truth for every shape that crosses a service boundary (DTOs, the `OrderStatus` enum, `ApiRoutes`). Published in two flavours: a C# library (`ShopFlow.Contracts`) and a TypeScript mirror (`@shopflow/contracts`). | C# + TypeScript | — |
| [adlc-demo-catalog-service](https://github.com/pavan-sudabattula/adlc-demo-catalog-service) | Owns the product catalog. Read-only API over an in-memory, seeded product store. | .NET (net10.0) | 5001 |
| [adlc-demo-orders-service](https://github.com/pavan-sudabattula/adlc-demo-orders-service) | Owns the order lifecycle. Persists orders in **EF Core / SQLite**, and enriches order lines by calling catalog-service. | .NET (net8.0) | 5002 |
| [adlc-demo-api-gateway](https://github.com/pavan-sudabattula/adlc-demo-api-gateway) | Edge / Backend-for-Frontend. The only service the browser talks to; forwards to catalog and orders. | .NET (net10.0) | 5000 |
| [adlc-demo-web-frontend](https://github.com/pavan-sudabattula/adlc-demo-web-frontend) | React single-page app: browse products, place orders, confirm orders. | React 19 + Vite + TS | 5173 |

## Architecture

```
   Browser ──► web-frontend (Vite dev server)         :5173
                       │  HTTP / JSON (CORS)
                       ▼
                 api-gateway  (BFF / edge)            :5000
                  │                    │
        /gateway/products       /gateway/orders
                  ▼                    ▼
        catalog-service          orders-service        :5001 / :5002
        (in-memory seed)         (EF Core / SQLite)
                  ▲                    │
                  └──── enrich order lines (HTTP)

   All four services reference  ──►  shared-contracts  (C# + TS DTOs)
```

Key ideas the demo illustrates:

- **The frontend only ever talks to the gateway.** The gateway fans out to the
  internal services, so the browser never needs to know they exist.
- **`OrderDto` is the central contract.** Adding a field to it forces coordinated
  changes in orders-service, api-gateway and web-frontend — but *not*
  catalog-service. That blast radius is the whole point of the demo.
- **Two consumption models for the contracts.** The .NET services reference
  `shared-contracts/dotnet` as a project reference (in production this would be a
  versioned NuGet package); the frontend consumes the TypeScript mirror.

---

## Prerequisites

- **.NET SDK 10** — builds catalog-service, api-gateway *and* the net8.0
  orders-service (the SDK restores the net8 reference packs automatically).
- **Node.js 18+** and npm — for the web-frontend.
- **Git** and (optionally) the **GitHub CLI** (`gh`) for cloning.

## 1. Clone all repositories as siblings

The repos must live **next to each other under one parent folder, using these exact
folder names** — the .NET projects reference each other with relative paths like
`..\shared-contracts\dotnet\ShopFlow.Contracts.csproj`, and the VS Code workspace
expects the same layout:

```
your-parent-folder/
├── adlc-demo-knowledge-repo/   ← this repo
├── shared-contracts/
├── catalog-service/
├── orders-service/
├── api-gateway/
└── web-frontend/
```

Clone them with the helper script (run from the parent folder):

```powershell
# Windows / PowerShell
./adlc-demo-knowledge-repo/clone-all.ps1
```

```bash
# macOS / Linux / Git Bash
./adlc-demo-knowledge-repo/clone-all.sh
```

…or manually (note the target folder names differ from the repo names):

```bash
git clone https://github.com/pavan-sudabattula/adlc-demo-shared-contracts.git shared-contracts
git clone https://github.com/pavan-sudabattula/adlc-demo-catalog-service.git  catalog-service
git clone https://github.com/pavan-sudabattula/adlc-demo-orders-service.git   orders-service
git clone https://github.com/pavan-sudabattula/adlc-demo-api-gateway.git      api-gateway
git clone https://github.com/pavan-sudabattula/adlc-demo-web-frontend.git     web-frontend
```

## 2. Open the workspace

Open `adlc-demo-knowledge-repo/shopflow.code-workspace` in VS Code
(**File → Open Workspace from File…**). All five repos load as folders in one window.

## 3. Run the application

Start the services in this order, each in its own terminal. The .NET services pick
their own ports, so no extra configuration is needed.

```bash
# 1) catalog-service  →  http://localhost:5001
cd catalog-service && dotnet run

# 2) orders-service   →  http://localhost:5002   (creates & seeds orders.db on first run)
cd orders-service && dotnet run

# 3) api-gateway      →  http://localhost:5000
cd api-gateway && dotnet run

# 4) web-frontend     →  http://localhost:5173
cd web-frontend && npm install && npm run dev
```

Then open **http://localhost:5173**. You should see the seeded product catalog and
one sample order; you can place new orders and confirm pending ones.

Swagger UI is available for each .NET service in Development at `/swagger`
(e.g. http://localhost:5000/swagger).

### Ports at a glance

| Service | URL |
|---------|-----|
| web-frontend (Vite) | http://localhost:5173 |
| api-gateway | http://localhost:5000 |
| catalog-service | http://localhost:5001 |
| orders-service | http://localhost:5002 |

### Key endpoints (via the gateway)

| Method | Route | Purpose |
|--------|-------|---------|
| GET  | `/gateway/products` | List products |
| GET  | `/gateway/orders` | List orders |
| POST | `/gateway/orders` | Create an order (`{ customerEmail, items: [{ productId, quantity }] }`) |
| POST | `/gateway/orders/{id}/confirm` | Move a pending order to Confirmed |

---

## Notes & conventions

- **catalog-service has no database** — products are seeded in-memory in
  `ProductStore`'s constructor, with stable hard-coded IDs.
- **orders-service uses EF Core / SQLite.** The schema is created at startup via
  `Database.EnsureCreated()` and a single sample order is seeded if the table is
  empty. There are no EF migrations — the `orders.db` file is gitignored and
  regenerated per environment.
- **Contracts must stay in lockstep.** The C# (`dotnet/`) and TypeScript
  (`typescript/`) definitions in shared-contracts describe the same shapes; change
  one, change the other.
- **Tests:** catalog-service ships an xUnit suite (`Tests/CatalogService.Tests`).
  Run it with `dotnet test` from that folder.
