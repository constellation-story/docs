# Node API

This document provides detailed information about the nodes-related API endpoints available in the Constellation project.

## Base

### Get all nodes

#### GET `/constellation/{constellation_uuid}/nodes`

**Description:**

Retrieve all nodes in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "All nodes successfully returned"
}
```

### Get a node by UUID

#### GET `/constellation/{constellation_uuid}/node/{node_uuid}`

**Description:**

Retrieve a node by its UUID.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Node retrieved successfully"
}
```

### Update a node

#### PATCH `/constellation/{constellation_uuid}/node/{node_uuid}`

**Description:**

Update a node by its UUID.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `attributes` (body): A JSON object containing the attributes to update. The keys are the attribute names and the values are the new values for those attributes.
- `labels` (body, optional): A list of labels to add to the node. If not provided, the existing labels will remain unchanged.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Request Body:**

```json
{
  "attributes": {
    "title": "example_title",
    "content": "example_content",
    "example_attribute": "example_value"
  },
  "labels": ["Node", "ExampleLabel"]
}
```

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Node updated successfully"
}
```

### Delete a node

#### DELETE `/constellation/{constellation_uuid}/node/{node_uuid}`

**Description:**

Delete a node by its UUID.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
  "success": true,
  "message": "Node deleted successfully"
}
```

### Create a new node

#### POST `/constellation/{constellation_uuid}/node`

**Description:**

Create a new node in the constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `attributes` (body): A JSON object containing the attributes for the new node. The keys are the attribute names and the values are the values for those attributes.
- `labels` (body, optional): A list of labels to add to the node.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Request Body:**

```json
{
  "attributes": {
    "title": "example_title",
    "content": "example_content",
    "example_attribute": "example_value"
  },
  "labels": ["Node", "ExampleLabel"]
}
```

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Node created successfully"
}
```

## Attributes

### Get all attributes in the constellation

#### GET `/constellation/{constellation_uuid}/attributes`

**Description:**

Retrieve all attributes keys from every node in the constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
  "success": true,
  "data": [
    "attribute1",
    "attribute2",
    "attribute3"
  ],
  "message": "Attributes retrieved"
}
```

### Get all attributes of a node

#### GET `/constellation/{constellation_uuid}/node/{node_uuid}/attributes`

**Description:**

Retrieve all attributes keys of a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
  "success": true,
  "data": [
    "attribute1",
    "attribute2",
    "attribute3"
  ],
  "message": "Attributes retrieved"
}
```

### Get the value of a specific attribute of a node

#### GET `/constellation/{constellation_uuid}/node/{node_uuid}/attribute/{attribute}`

**Description:**

Retrieve the value of a specific attribute of a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `attribute` (path): The name of the attribute.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
  "success": true,
  "data": [
    "value"
  ],
  "message": "Attribute retrieved"
}
```

### Set the value of a specific attribute of a node

#### PATCH `/constellation/{constellation_uuid}/node/{node_uuid}/attribute/{attribute}`

**Description:**

Set the value of a specific attribute of a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `attribute` (path): The name of the attribute.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Request Body:**

- `value` (body): The value to set for the attribute.

```json
{
  "value": "example_value"
}
```

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Attribute updated"
}
```

### Delete a specific attribute of a node

#### DELETE `/constellation/{constellation_uuid}/node/{node_uuid}/attribute/{attribute}`

**Description:**

Delete a specific attribute of a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `attribute` (path): The name of the attribute.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Attribute deleted"
}
```

### Add an attribute to a node

#### POST `/constellation/{constellation_uuid}/node/{node_uuid}/attribute/{attribute}`

**Description:**

Add an attribute to a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `attribute` (path): The name of the attribute.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Request Body:**

- `value` (body): The value to set for the attribute.

```json
{
  "value": "example_value"
}
```

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Attribute added"
}
```

### Get all nodes with a specific attribute

#### GET `/constellation/{constellation_uuid}/nodes/attribute/{attribute}`

**Description:**

Retrieve all nodes with a specific attribute key in the constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `attribute` (path): The name of the attribute.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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

## Labels

### Get all labels in the constellation

#### GET `/constellation/{constellation_uuid}/labels`

**Description:**

Retrieve all labels from every node in the constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
  "success": true,
  "data": [
    "Node",
    "Person",
    "Movie",
    "Book"
  ],
  "message": "Labels successfully retrieved"
}
```

### Get all labels of a node

#### GET `/constellation/{constellation_uuid}/node/{node_uuid}/labels`

**Description:**

Retrieve all labels of a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

**Response Example:**

```json
{
  "success": true,
  "data": [
    [
      "Node",
      "Person"
    ]
  ],
  "message": "Labels successfully retrieved"
}
```

### Remove all labels from a node

#### DELETE `/constellation/{constellation_uuid}/node/{node_uuid}/labels`

**Description:**

Remove all labels from a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "All labels successfully removed"
}
```

### Get all nodes with a label

#### GET `/constellation/{constellation_uuid}/nodes/label/{label}`

**Description:**

Retrieve all nodes with a specific label in the constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `label` (path): The name of the label.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Nodes successfully retrieved"
}
```

### Add a label to a node

#### POST `/constellation/{constellation_uuid}/node/{node_uuid}/label/{label}`

**Description:**

Add a label to a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `label` (path): The name of the label to add.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Label successfully added"
}
```

### Remove a label from a node

#### DELETE `/constellation/{constellation_uuid}/node/{node_uuid}/label/{label}`

**Description:**

Remove a label from a node.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `node_uuid` (path): The unique identifier of the node.
- `label` (path): The name of the label to delete.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Response:**

- `200 OK`: Returns user details.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving links.

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
  "message": "Label successfully removed"
}
```
