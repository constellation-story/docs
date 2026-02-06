# Backend Deployment

The backend of the project is automatically deployed using Github Actions and Dokploy.

When a change is pushed to the `main` branch (for production environment) and the `develop` branch (for preview environment), a GitHub Action is triggered to build the specific changed services and create a new Docker image for each of them.

The new images are then pushed to GHCR (GitHub Container Registry).

After that, Dokploy is notified to deploy the changed services.

Once notified, Dokploy pulls the images from GHCR with the corresponding tags and restarts the Docker containers on the server.

```mermaid
flowchart LR
    Dev[Developer pushes code] -->|push| Repo[(Git Repository)]

    Repo -->|push main| GHAProd[GitHub Actions<br/>Production]
    Repo -->|push develop| GHAPreview[GitHub Actions<br/>Preview]

    GHAProd -->|detect changed services| BuildProd[Build Docker images<br/>Changed services]
    GHAPreview -->|detect changed services| BuildPreview[Build Docker images<br/>Changed services]

    BuildProd -->|docker push| GHCRProd[(GHCR<br/>Production tags)]
    BuildPreview -->|docker push| GHCRPreview[(GHCR<br/>Preview tags)]

    GHCRProd -->|notify deploy| DokployProd[Dokploy<br/>Production]
    GHCRPreview -->|notify deploy| DokployPreview[Dokploy<br/>Preview]

    DokployProd -->|docker pull + restart| DeployProd[Deploy Backend Services<br/>Production Server]
    DokployPreview -->|docker pull + restart| DeployPreview[Deploy Backend Services<br/>Preview Server]
```