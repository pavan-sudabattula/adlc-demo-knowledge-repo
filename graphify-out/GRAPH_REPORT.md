# Graph Report - .  (2026-06-16)

## Corpus Check
- Corpus is ~8,547 words - fits in a single context window. You may not need a graph.

## Summary
- 474 nodes · 611 edges · 48 communities (41 shown, 7 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_.NET Project Config|.NET Project Config]]
- [[_COMMUNITY_Catalog HTTP Client|Catalog HTTP Client]]
- [[_COMMUNITY_Frontend API Client|Frontend API Client]]
- [[_COMMUNITY_Frontend Package Manifest|Frontend Package Manifest]]
- [[_COMMUNITY_Frontend TypeScript Config|Frontend TypeScript Config]]
- [[_COMMUNITY_Gateway Order APIs|Gateway Order APIs]]
- [[_COMMUNITY_Node TypeScript Config|Node TypeScript Config]]
- [[_COMMUNITY_Order SQLite Storage|Order SQLite Storage]]
- [[_COMMUNITY_Gateway Orders Client|Gateway Orders Client]]
- [[_COMMUNITY_Orders Service APIs|Orders Service APIs]]
- [[_COMMUNITY_Order Service Logic|Order Service Logic]]
- [[_COMMUNITY_Gateway Catalog APIs|Gateway Catalog APIs]]
- [[_COMMUNITY_Catalog Service APIs|Catalog Service APIs]]
- [[_COMMUNITY_Catalog Integration Tests|Catalog Integration Tests]]
- [[_COMMUNITY_Shared TypeScript Contracts|Shared TypeScript Contracts]]
- [[_COMMUNITY_Orders Client Interface|Orders Client Interface]]
- [[_COMMUNITY_Order Service Interface|Order Service Interface]]
- [[_COMMUNITY_Platform Boundary Docs|Platform Boundary Docs]]
- [[_COMMUNITY_Gateway Launch Settings|Gateway Launch Settings]]
- [[_COMMUNITY_Catalog Product Storage|Catalog Product Storage]]
- [[_COMMUNITY_Catalog Launch Settings|Catalog Launch Settings]]
- [[_COMMUNITY_Catalog Product Service|Catalog Product Service]]
- [[_COMMUNITY_Order Store Interface|Order Store Interface]]
- [[_COMMUNITY_Orders Launch Settings|Orders Launch Settings]]
- [[_COMMUNITY_Contracts Package Manifest|Contracts Package Manifest]]
- [[_COMMUNITY_Contracts TypeScript Config|Contracts TypeScript Config]]
- [[_COMMUNITY_Catalog Service Unit Tests|Catalog Service Unit Tests]]
- [[_COMMUNITY_Catalog Client Interface|Catalog Client Interface]]
- [[_COMMUNITY_Product Store Interface|Product Store Interface]]
- [[_COMMUNITY_Product Service Interface|Product Service Interface]]
- [[_COMMUNITY_Catalog Data-Driven Tests|Catalog Data-Driven Tests]]
- [[_COMMUNITY_Orders Catalog Interface|Orders Catalog Interface]]
- [[_COMMUNITY_Shared API Routes|Shared API Routes]]
- [[_COMMUNITY_Placeholder Catalog Test|Placeholder Catalog Test]]
- [[_COMMUNITY_Orders Database Context|Orders Database Context]]
- [[_COMMUNITY_Create Order Contract|Create Order Contract]]
- [[_COMMUNITY_Order DTO Contract|Order DTO Contract]]
- [[_COMMUNITY_Order Entity Models|Order Entity Models]]
- [[_COMMUNITY_Money Value Object|Money Value Object]]
- [[_COMMUNITY_Order Line Contract|Order Line Contract]]
- [[_COMMUNITY_Product DTO Contract|Product DTO Contract]]
- [[_COMMUNITY_Vite Environment Types|Vite Environment Types]]
- [[_COMMUNITY_Repository Clone Script|Repository Clone Script]]
- [[_COMMUNITY_Catalog Service Bootstrap|Catalog Service Bootstrap]]

## God Nodes (most connected - your core abstractions)
1. `compilerOptions` - 17 edges
2. `compilerOptions` - 15 edges
3. `SqliteOrderStore` - 9 edges
4. `compilerOptions` - 9 edges
5. `api-gateway` - 9 edges
6. `OrdersClient` - 8 edges
7. `OrderService` - 8 edges
8. `OrdersGatewayController` - 7 edges
9. `http` - 7 edges
10. `http` - 7 edges

## Surprising Connections (you probably didn't know these)
- `Gateway-only frontend boundary` --rationale_for--> `api-gateway`  [EXTRACTED]
  adlc-demo-knowledge-repo/README.md → api-gateway/README.md
- `Gateway-only frontend boundary` --rationale_for--> `web-frontend`  [EXTRACTED]
  adlc-demo-knowledge-repo/README.md → web-frontend/README.md
- `ShopFlow Platform` --references--> `api-gateway`  [EXTRACTED]
  adlc-demo-knowledge-repo/README.md → api-gateway/README.md
- `ShopFlow Platform` --references--> `catalog-service`  [EXTRACTED]
  adlc-demo-knowledge-repo/README.md → catalog-service/README.md
- `ShopFlow Platform` --references--> `orders-service`  [EXTRACTED]
  adlc-demo-knowledge-repo/README.md → orders-service/README.md

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **OrderDto Change Blast Radius** — shared_contracts_readme_orderdto_central_contract, orders_service_readme_orders_service, api_gateway_readme_api_gateway, web_frontend_readme_web_frontend [EXTRACTED 1.00]
- **ShopFlow Request Flow** — web_frontend_readme_web_frontend, api_gateway_readme_api_gateway, catalog_service_readme_catalog_service, orders_service_readme_orders_service [EXTRACTED 1.00]

## Communities (48 total, 7 thin omitted)

### .NET Project Config - ".NET Project Config"
Cohesion: 0.08
Nodes (20): net10.0, Swashbuckle.AspNetCore (7.2.0), Microsoft.NET.Sdk.Web, net10.0, Swashbuckle.AspNetCore (7.2.0), Microsoft.NET.Sdk.Web, net10.0, Microsoft.NET.Sdk (+12 more)

### Catalog HTTP Client - "Catalog HTTP Client"
Cohesion: 0.11
Nodes (16): CancellationToken, CatalogClient, Guid, HttpClient, IEnumerable, JsonSerializerOptions, ProductDto, Task (+8 more)

### Frontend API Client - "Frontend API Client"
Cohesion: 0.18
Nodes (10): confirmOrder(), createOrder(), getOrders(), getProducts(), request(), CreateOrder(), CreateOrderProps, STATUS_CLASS (+2 more)

### Frontend Package Manifest - "Frontend Package Manifest"
Cohesion: 0.11
Nodes (18): dependencies, react, react-dom, @shopflow/contracts, devDependencies, @types/react, @types/react-dom, typescript (+10 more)

### Frontend TypeScript Config - "Frontend TypeScript Config"
Cohesion: 0.11
Nodes (18): compilerOptions, allowImportingTsExtensions, jsx, lib, module, moduleDetection, moduleResolution, noEmit (+10 more)

### Gateway Order APIs - "Gateway Order APIs"
Cohesion: 0.25
Nodes (12): ActionResult, CancellationToken, CreateOrderRequest, Guid, HttpGet, HttpPost, IEnumerable, IOrdersClient (+4 more)

### Node TypeScript Config - "Node TypeScript Config"
Cohesion: 0.12
Nodes (16): compilerOptions, allowImportingTsExtensions, lib, module, moduleDetection, moduleResolution, noEmit, noFallthroughCasesInSwitch (+8 more)

### Order SQLite Storage - "Order SQLite Storage"
Cohesion: 0.24
Nodes (9): SqliteOrderStore, IOrderStore, OrderEntity, CancellationToken, Guid, IReadOnlyList, OrderDto, Task (+1 more)

### Gateway Orders Client - "Gateway Orders Client"
Cohesion: 0.23
Nodes (10): CancellationToken, CreateOrderRequest, Guid, HttpClient, IEnumerable, JsonSerializerOptions, OrderDto, Task (+2 more)

### Orders Service APIs - "Orders Service APIs"
Cohesion: 0.25
Nodes (10): OrdersController, ActionResult, CreateOrderRequest, Guid, HttpGet, HttpPost, IOrderService, IReadOnlyList (+2 more)

### Order Service Logic - "Order Service Logic"
Cohesion: 0.23
Nodes (10): IOrderService, CancellationToken, CreateOrderRequest, Guid, ICatalogClient, IOrderStore, IReadOnlyList, OrderDto (+2 more)

### Gateway Catalog APIs - "Gateway Catalog APIs"
Cohesion: 0.21
Nodes (11): ActionResult, CancellationToken, Guid, HttpGet, ICatalogClient, IEnumerable, ProducesResponseType, ProductDto (+3 more)

### Catalog Service APIs - "Catalog Service APIs"
Cohesion: 0.28
Nodes (9): ActionResult, Guid, HttpGet, IEnumerable, IProductService, ProducesResponseType, ProductDto, Task (+1 more)

### Catalog Integration Tests - "Catalog Integration Tests"
Cohesion: 0.21
Nodes (9): Fact, InlineData, Task, Theory, CatalogService.Tests, ProductServiceIntegrationTests, IClassFixture, Program (+1 more)

### Shared TypeScript Contracts - "Shared TypeScript Contracts"
Cohesion: 0.19
Nodes (7): Money, CreateOrderRequest, Order, OrderLine, OrderStatus, Product, GatewayRoutes

### Orders Client Interface - "Orders Client Interface"
Cohesion: 0.32
Nodes (7): CancellationToken, CreateOrderRequest, Guid, IEnumerable, OrderDto, Task, IOrdersClient

### Order Service Interface - "Order Service Interface"
Cohesion: 0.32
Nodes (7): CancellationToken, CreateOrderRequest, Guid, IReadOnlyList, OrderDto, Task, IOrderService

### Platform Boundary Docs - "Platform Boundary Docs"
Cohesion: 0.45
Nodes (11): Gateway-only frontend boundary, ShopFlow Platform, api-gateway, OrderDto passthrough verification, catalog-service, orders-service, Contract lockstep requirement, OrderDto central contract (+3 more)

### Gateway Launch Settings - "Gateway Launch Settings"
Cohesion: 0.18
Nodes (10): ASPNETCORE_ENVIRONMENT, applicationUrl, commandName, dotnetRunMessages, environmentVariables, launchBrowser, launchUrl, profiles (+2 more)

### Catalog Product Storage - "Catalog Product Storage"
Cohesion: 0.25
Nodes (7): Guid, IEnumerable, IReadOnlyList, ProductDto, Task, ProductStore, IProductStore

### Catalog Launch Settings - "Catalog Launch Settings"
Cohesion: 0.18
Nodes (10): ASPNETCORE_ENVIRONMENT, applicationUrl, commandName, dotnetRunMessages, environmentVariables, launchBrowser, launchUrl, profiles (+2 more)

### Catalog Product Service - "Catalog Product Service"
Cohesion: 0.25
Nodes (7): Guid, IEnumerable, IProductStore, ProductDto, Task, IProductService, ProductService

### Order Store Interface - "Order Store Interface"
Cohesion: 0.35
Nodes (6): IOrderStore, CancellationToken, Guid, IReadOnlyList, OrderDto, Task

### Orders Launch Settings - "Orders Launch Settings"
Cohesion: 0.18
Nodes (10): ASPNETCORE_ENVIRONMENT, applicationUrl, commandName, dotnetRunMessages, environmentVariables, launchBrowser, launchUrl, profiles (+2 more)

### Contracts Package Manifest - "Contracts Package Manifest"
Cohesion: 0.18
Nodes (10): description, devDependencies, typescript, main, name, scripts, build, type (+2 more)

### Contracts TypeScript Config - "Contracts TypeScript Config"
Cohesion: 0.18
Nodes (10): compilerOptions, declaration, esModuleInterop, module, moduleResolution, outDir, skipLibCheck, strict (+2 more)

### Catalog Service Unit Tests - "Catalog Service Unit Tests"
Cohesion: 0.38
Nodes (4): Fact, Task, CatalogService.Tests, ProductServiceTests

### Catalog Client Interface - "Catalog Client Interface"
Cohesion: 0.31
Nodes (6): CancellationToken, ICatalogClient, Guid, IEnumerable, ProductDto, Task

### Product Store Interface - "Product Store Interface"
Cohesion: 0.33
Nodes (5): Guid, IEnumerable, ProductDto, Task, IProductStore

### Product Service Interface - "Product Service Interface"
Cohesion: 0.33
Nodes (5): Guid, IEnumerable, ProductDto, Task, IProductService

### Catalog Data-Driven Tests - "Catalog Data-Driven Tests"
Cohesion: 0.39
Nodes (5): InlineData, Task, Theory, CatalogService.Tests, ProductServiceDataDrivenTests

### Orders Catalog Interface - "Orders Catalog Interface"
Cohesion: 0.29
Nodes (5): CancellationToken, ICatalogClient, Guid, ProductDto, Task

### Shared API Routes - "Shared API Routes"
Cohesion: 0.47
Nodes (5): ApiRoutes, Catalog, Gateway, Orders, string

### Placeholder Catalog Test - "Placeholder Catalog Test"
Cohesion: 0.40
Nodes (3): Fact, CatalogService.Tests, UnitTest1

### Orders Database Context - "Orders Database Context"
Cohesion: 0.40
Nodes (3): OrdersDbContext, DbContext, ModelBuilder

### Create Order Contract - "Create Order Contract"
Cohesion: 0.50
Nodes (3): CreateOrderRequest, OrderItemRequest, ShopFlow.Contracts

### Order DTO Contract - "Order DTO Contract"
Cohesion: 0.50
Nodes (3): OrderDto, ShopFlow.Contracts, List

## Knowledge Gaps
- **195 isolated node(s):** `clone-all.sh script`, `net10.0`, `Swashbuckle.AspNetCore (7.2.0)`, `Microsoft.NET.Sdk.Web`, `JsonSerializerOptions` (+190 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **7 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `OrdersGatewayController` connect `Gateway Order APIs` to `Gateway Catalog APIs`?**
  _High betweenness centrality (0.006) - this node is a cross-community bridge._
- **Why does `OrdersController` connect `Orders Service APIs` to `Gateway Catalog APIs`?**
  _High betweenness centrality (0.006) - this node is a cross-community bridge._
- **Why does `ProductsController` connect `Catalog Service APIs` to `Gateway Catalog APIs`?**
  _High betweenness centrality (0.005) - this node is a cross-community bridge._
- **What connects `clone-all.sh script`, `net10.0`, `Swashbuckle.AspNetCore (7.2.0)` to the rest of the system?**
  _197 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `.NET Project Config` be split into smaller, more focused modules?**
  _Cohesion score 0.08 - nodes in this community are weakly interconnected._
- **Should `Catalog HTTP Client` be split into smaller, more focused modules?**
  _Cohesion score 0.10952380952380952 - nodes in this community are weakly interconnected._
- **Should `Frontend Package Manifest` be split into smaller, more focused modules?**
  _Cohesion score 0.10526315789473684 - nodes in this community are weakly interconnected._
