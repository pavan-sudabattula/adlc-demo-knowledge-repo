# Clones all ShopFlow repos as siblings of this knowledge repo, using the
# folder names the projects/workspace expect. Run from the parent folder, e.g.:
#   ./adlc-demo-knowledge-repo/clone-all.ps1

$ErrorActionPreference = "Stop"
$org = "https://github.com/pavan-sudabattula"

# repo name -> local folder name
$repos = [ordered]@{
    "adlc-demo-shared-contracts" = "shared-contracts"
    "adlc-demo-catalog-service"  = "catalog-service"
    "adlc-demo-orders-service"   = "orders-service"
    "adlc-demo-api-gateway"      = "api-gateway"
    "adlc-demo-web-frontend"     = "web-frontend"
}

foreach ($repo in $repos.Keys) {
    $folder = $repos[$repo]
    if (Test-Path $folder) {
        Write-Host "skip   $folder (already exists)"
    } else {
        Write-Host "clone  $repo -> $folder"
        git clone "$org/$repo.git" $folder
    }
}
Write-Host "Done. Open adlc-demo-knowledge-repo/shopflow.code-workspace in VS Code."
