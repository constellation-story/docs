# Node API

This document provides detailed information about the nodes-related API endpoints available in the Constellation project.

## Search for nodes

### GET `/constellation/{constellation_uuid}/search/nodes`

**Description:**

Search for nodes in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `search` (query): The search term to find nodes.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.
- `limit` (query, optional): The maximum number of results to return. Defaults to 100.
- `page` (query, optional): The page number for pagination. Defaults to 1.

**Response:**

- `200 OK`: Returns matching nodes.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving nodes.

**Response Example:**

```json
{
    "success": true,
    "data":
        [
            {
                "attributes": {
                    "node_uuid": "0000-000000...",
                    "title": "example_title",
                    "content": "example_content"
                },
                "labels": [
                    "Node"
                ],
                "score": {
                    "attributes": {
                        "title": 95,
                        "content": 85
                    },
                    "labels": {
                        "Node": 100
                    }
                }
            }
        ],
    "message": "All matching nodes successfully returned"
}
```

## Search for links

### GET `/constellation/{constellation_uuid}/search/links`

**Description:**

Search for links in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `search` (query): The search term to find links.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.
- `limit` (query, optional): The maximum number of results to return. Defaults to 100.
- `page` (query, optional): The page number for pagination. Defaults to 1.

**Response:**

- `200 OK`: Returns matching links.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
    "success": true,
    "data":
        [
            {
                "start_node": "0000-000000...",
                "end_node": "0000-000000...",
                "link_type": "string",
                "attributes": {
                    "link_uuid": "0000-000000...",
                    "title": "example_link_title",
                    "content": "example_link_content"
                },
                "score": {
                    "attributes": {
                        "title": 90,
                        "content": 80
                    },
                    "type": {
                        "string": 100
                    }
                }
            }
        ],
    "message": "All matching links successfully returned"
}
```
