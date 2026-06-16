#!/usr/bin/env bash
# Clones all ShopFlow repos as siblings of this knowledge repo, using the
# folder names the projects/workspace expect. Run from the parent folder, e.g.:
#   ./adlc-demo-knowledge-repo/clone-all.sh
set -euo pipefail

ORG="https://github.com/pavan-sudabattula"

# "repo-name folder-name" pairs
repos=(
  "adlc-demo-shared-contracts shared-contracts"
  "adlc-demo-catalog-service catalog-service"
  "adlc-demo-orders-service orders-service"
  "adlc-demo-api-gateway api-gateway"
  "adlc-demo-web-frontend web-frontend"
)

for entry in "${repos[@]}"; do
  repo="${entry%% *}"
  folder="${entry##* }"
  if [ -d "$folder" ]; then
    echo "skip   $folder (already exists)"
  else
    echo "clone  $repo -> $folder"
    git clone "$ORG/$repo.git" "$folder"
  fi
done

echo "Done. Open adlc-demo-knowledge-repo/shopflow.code-workspace in VS Code."
