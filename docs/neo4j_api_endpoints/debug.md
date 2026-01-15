# Debug API

This document provides detailed information about the debug-related API endpoints available in the Constellation project.
All the debug endpoints are used for testing and debugging purposes only, and are available only in the development environment.
As it's debug-related, it doesn't require authentication.

## Get all nodes

### GET `/nodes`

**Description:**
This endpoint retrieves all nodes in the database. It is primarily used for debugging and testing purposes.
It returns a list of all nodes along with their attributes and labels.
This endpoint is not intended for production use.

**Response:**

- `200 OK`: Returns all nodes in the database.
- `500 Internal Server Error`: An error occurred while retrieving nodes.

**Response Example:**

```json
{
  "success": true,
  "data": [
    {
      "attributes": {
        "node_uuid": 1,
        "title": "example_title",
        "content": "example_content"
      },
      "labels": [
        "Node"
      ]
    }
  ],
  "message": "Nodes retrieved"
}
```

## Get all links

### GET `/links`

**Description:**

This endpoint retrieves all links in the database. It is primarily used for debugging and testing purposes.
It returns a list of all links along with their attributes and types.
This endpoint is not intended for production use.

**Response:**

- `200 OK`: Returns all links in the database.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
  "success": true,
  "data": [
    {
      "start_node": 1,
      "end_node": 2,
      "type": "example_type",
      "attributes": {
        "link_uuid": 1
      }
    }
  ],
  "message": "Links retrieved"
}
```

## Reset the database

### GET `/reset`

**Description:**

This endpoint resets the database by deleting all nodes and links. It is primarily used for debugging and testing purposes.
It is important to note that this action is irreversible and will remove all data from the database.
This endpoint is not intended for production use and should be used with caution.

**Response:**

- `200 OK`: Returns all links in the database.
- `500 Internal Server Error`: An error occurred while resetting the database.

**Response Example:**

```json
{
  "success": true,
  "message": "Database reset"
}
```

## Populate the database

### GET `/populate`

**Description:**

This endpoint populates the database with sample data using a cypher file. It is primarily used for debugging and testing purposes.
It is important to note that this action is irreversible and will remove all existing data from the database.
This endpoint is not intended for production use and should be used with caution.

**Response:**

- `200 OK`: Returns all links in the database.
- `404 Not Found`: The populate cypher file was not found.
- `500 Internal Server Error`: An error occurred while populating the database.

**Response Example:**

```json
{
  "success": true,
  "message": "Database populated"
}
```

or

```json
{
  "success": false,
  "message": "Cypher file not found",
  "error": {
    "code": "FILE_NOT_FOUND",
    "message": "Cypher file not found"
  }
}
```
