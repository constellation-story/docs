# Frontend Deployment

The frontend of the project is automatically deployed using Dokploy.

Dokploy is watching the `main` branch (for production environment) and the `develop` branch (for preview environment) of the repository for any changes.

When changes are detected, Dokploy builds and deploys the frontend application to the server.

Dokploy manages the deployment process, including pulling the repository, building the application, and starting the docker containers.

The environment variables required for the frontend deployment should be configured in the Dokploy dashboard.

```mermaid
flowchart TD
    Dev[Developer pushes code] -->|push| Repo[(Git Repository)]

    Repo -->|watch main| DokployProd[Dokploy<br/>Production]
    Repo -->|watch develop| DokployPreview[Dokploy<br/>Preview]

    DokployProd -->|git pull| BuildProd[Build Frontend]
    DokployPreview -->|git pull| BuildPreview[Build Frontend]

    BuildProd -->|docker build| DeployProd[Deploy Containers<br/>Production Server]
    BuildPreview -->|docker build| DeployPreview[Deploy Containers<br/>Preview Server]

    DokployProd -->|env vars| EnvProd[(Env vars<br/>Dokploy Dashboard)]
    DokployPreview -->|env vars| EnvPreview[(Env vars<br/>Dokploy Dashboard)]
```
