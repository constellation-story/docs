# Constellation Backend API Documentation

Welcome to the Constellation Backend API documentation. This documentation provides detailed information about the various API endpoints available in the Constellation project.

## Table of Contents

### Neo4j API Endpoints

- [Nodes API](neo4j_api_endpoints/nodes.md)
- [Links API](neo4j_api_endpoints/links.md)
- [Search API](neo4j_api_endpoints/search.md)
- [Neo4j Debug API](neo4j_api_endpoints/debug.md)

### Postgres API Endpoints

- [Users API](postgres_api_endpoints/users.md)
- [Files and Folders API](postgres_api_endpoints/files.md)
- [Images API](postgres_api_endpoints/images.md)
- [Comments API](postgres_api_endpoints/comments.md)
- [Constellations API](postgres_api_endpoints/constellations.md)
- [Structure API](postgres_api_endpoints/structure.md)
- [Postgres Debug API](postgres_api_endpoints/debug.md)

### SSE API Endpoints

- [SSE Server](sse_server/overview.md)

### CRDT Server

- [CRDT Server](crdt_server/overview.md)

### RAG AI

- [RAG AI](rag_ai/overview.md)

Each section contains detailed information about the request parameters, request body, response, and response examples for the respective API endpoints.

## Getting Started

To get started with the Constellation Backend API, you will need to have the following:

- An API key or access token for authentication.
- The base URL for the API endpoints.

## Authentication

All API requests require authentication using a JWT token. You can obtain a token by logging in with your credentials.

## Error Handling

The API uses standard HTTP status codes to indicate the success or failure of an API request. Common status codes include:

- `200 OK`: The request was successful.
- `201 Created`: The resource was successfully created.
- `400 Bad Request`: The request was invalid or cannot be served.
- `401 Unauthorized`: Authentication failed or user does not have permissions for the requested operation.
- `403 Forbidden`: Authentication succeeded but authenticated user does not have access to the requested resource.
- `404 Not Found`: The requested resource could not be found.
- `500 Internal Server Error`: An error occurred on the server.

For more detailed information about each API endpoint, please refer to the respective sections in the Table of Contents.
