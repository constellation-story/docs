# API Endpoints for the RAG AI

This document provides an overview of the API endpoints available for the RAG AI in the Constellation project.

## Endpoints

### Build Index

#### POST `/build-index/{{constellation_uuid}}`

**Description:**

Builds the index for the RAG AI using the data from the Constellation database.

**Request Parameters:**

- `constellation_uuid` (path): The UUID of the constellation for which the index is to be built

**Response:**

- `200 OK`: Index built successfully.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
  "status": "success",
  "constellation_uuid": "00000000-0000-0000-0000-000000000000",
  "chunks_generated": 10,
  "message": "Index built successfully."
}
```

### Query

#### POST `/query/{{constellation_uuid}}`

**Description:**

Asks a question to the RAG AI and retrieves the answer based on the data stored in the built index.

**Request Parameters:**

- `constellation_uuid` (path): The UUID of the constellation for which the question is asked.
- `q` (query): The question to ask.
- `k` (query, optional): The number of chunks to use to generate the result (default is 5).
- `threshold` (query, optional): The minimum score for results (default is 0.15).

**Response:**

- `200 OK`: Question answered successfully.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving the answer.

**Response Example:**

```json
{
  "question": "What is the capital of France?",
  "qa_answer": "Paris",
  "score": 0.95,
  "answer": "The capital of France is Paris.",
  "sources": [
    {
      "collection_uuid": "00000000-0000-0000-0000-000000000000",
      "path": "/my_file",
      "name": "my_file",
      "status": "DRAFT",
      "owner_id": "00000000-0000-0000-0000-000000000000",
      "created_at": "2025-06-26T09:37:05.265319Z",
      "updated_at": "2025-06-26T09:37:05.265319Z",
      "doc_id": "00000000-0000-0000-0000-000000000000",
      "chunk_id": 0,
      "text": "text of the chunk",
    },
    ...
  ],
}
```
