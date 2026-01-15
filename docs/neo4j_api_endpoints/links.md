# Link API

This document provides detailed information about the links-related API endpoints available in the Constellation project.

## Base

### Get all links

#### GET `/constellation/{constellation_uuid}/links`

**Description:**

Retrieve all links in a constellation.

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
      "start_node": 1,
      "end_node": 2,
      "type": "example_type",
      "attributes": {
        "link_uuid": 1
      }
    }
  ],
  "message": "All links successfully returned"
}
```

### Get all links to/from a specific node

#### GET `/constellation/{constellation_uuid}/link/node/{node_uuid}`

**Description:**

Retrieve all links to/from a specific node in a constellation.

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
      "start_node": 1,
      "end_node": 2,
      "type": "example_type",
      "attributes": {
        "link_uuid": 1
      }
    }
  ],
  "message": "All links successfully returned"
}
```

### Get a link by UUID

#### GET `/constellation/{constellation_uuid}/link/{link_uuid}`

**Description:**

Retrieve a link by its UUID in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `link_uuid` (path): The unique identifier of the link.
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
      "start_node": 1,
      "end_node": 2,
      "type": "example_type",
      "attributes": {
        "link_uuid": 1
      }
    }
  ],
  "message": "Link successfully returned"
}
```

### Create a new link

#### POST `/constellation/{constellation_uuid}/link`

**Description:**

Create a new link in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Request Body:**

- `start_node` (body): The UUID of the start node.
- `end_node` (body): The UUID of the end node.
- `link_type` (body): The type of the link.

```json
{
    "start_node": "0000-000000...",
    "end_node": "0000-000000...",
    "link_type": "string"
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
      "start_node": 1,
      "end_node": 2,
      "type": "example_type",
      "attributes": {
        "link_uuid": 1
      }
    }
  ],
  "message": "Link successfully created"
}
```

### Delete a link

#### DELETE `/constellation/{constellation_uuid}/link/{link_uuid}`

**Description:**

Delete a link in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `link_uuid` (path): The unique identifier of the link.

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
  "message": "Link successfully deleted"
}
```

### Update a link

#### PATCH `/constellation/{constellation_uuid}/link/{link_uuid}`

**Description:**

Update a link in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `link_uuid` (path): The unique identifier of the link.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Request Body:**

- `new_start_node` (body, optional): The new UUID of the start node.
- `new_end_node` (body, optional): The new UUID of the end node.
- `new_link_type` (body, optional): The new type of the link.

```json
{
    "new_start_node": "0000-000000...",
    "new_end_node": "0000-000000...",
    "new_link_type": "string"
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
      "start_node": 1,
      "end_node": 2,
      "type": "example_type",
      "attributes": {
        "link_uuid": 1
      }
    }
  ],
  "message": "Link successfully updated"
}
```

## Attributes

### Get all attributes of a specific link

#### GET `/constellation/{constellation_uuid}/link/{link_uuid}/attributes`

**Description:**

Retrieve all attributes keys of a specific link in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `link_uuid` (path): The unique identifier of the link.

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
      "attribute1",
      "attribute2",
      "attribute3"
    ]
  ],
  "message": "Attributes retrieved"
}
```

### Get the value of a specific attribute of a specific link

#### GET `/constellation/{constellation_uuid}/link/{link_uuid}/attribute/{attribute}`

**Description:**

Retrieve the value of a specific attribute of a specific link in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `link_uuid` (path): The unique identifier of the link.
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
    "value1"
  ],
  "message": "Attribute retrieved"
}
```

### Set the value of a specific attribute of a specific link

#### PATCH `/constellation/{constellation_uuid}/link/{link_uuid}/attribute/{attribute}`

**Description:**

Set the value of a specific attribute of a specific link in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `link_uuid` (path): The unique identifier of the link.
- `attribute` (path): The name of the attribute.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Request Body:**

- `value` (body): The new value for the attribute.

```json
{
    "value": "new_value"
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
      "start_node": 1,
      "end_node": 2,
      "type": "LINK",
      "attributes": {
        "link_uuid": 1,
        "attribute": "value"
      }
    }
  ],
  "message": "Attribute updated"
}
```

### Delete a specific attribute of a specific link

#### DELETE `/constellation/{constellation_uuid}/link/{link_uuid}/attribute/{attribute}`

**Description:**

Delete a specific attribute of a specific link in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `link_uuid` (path): The unique identifier of the link.
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
      "start_node": 1,
      "end_node": 2,
      "type": "LINK",
      "attributes": {
        "link_uuid": 1,
        "attribute": "value"
      }
    }
  ],
  "message": "Attribute deleted"
}
```

### Add a new attribute to a link

#### POST `/constellation/{constellation_uuid}/link/{link_uuid}/attribute/{attribute}`

**Description:**

Add a new attribute to a link in a constellation.

**Request Parameters:**

- `constellation_uuid` (path): The unique identifier of the constellation.
- `link_uuid` (path): The unique identifier of the link.
- `attribute` (path): The name of the attribute.
- `decode` (query, optional): Set to None by default. If set to `XML`, `xml`, `XML_TEXT` or `xml_text`, the attributes containing ydoc data will be decoded to a readable format in an xml format. If set to `PLAIN`, `plain`, `PLAIN_TEXT` or `plain_text`, the attributes containing ydoc data will be decoded to a readable format in a plain text format. Else, the attributes will be returned in their original format.
- `in_filter` (query, optional): A filter to include only specific attributes in the final results.
- `out_filter` (query, optional): A filter to exclude specific attributes from the final results.

**Request Body:**

- `value` (body): The value for the attribute.

```json
{
    "value": "new_value"
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
      "start_node": 1,
      "end_node": 2,
      "type": "LINK",
      "attributes": {
        "link_uuid": 1,
        "attribute": "value"
      }
    }
  ],
  "message": "Attribute added"
}
```

### Get all links with a specific attribute

#### GET `/constellation/{constellation_uuid}/links/attribute/{attribute}`

**Description:**

Retrieve all links with a specific attribute key in a constellation.

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
      "start_node": 1,
      "end_node": 2,
      "type": "LINK",
      "attributes": {
        "link_uuid": 1,
        "attribute": "value"
      }
    }
  ],
  "message": "Links retrieved"
}
```

<!--
Format Example:

## Get a User by ID

### GET `/users/{user_uuid}`
Retrieve a user by their ID.

**Request Parameters:**
- `user_uuid` (path): The unique identifier of the user.

**Response:**
- `200 OK`: Returns user details.
- `404 Not Found`: User not found.

**Response Example**
```json
{
    "uuid": "0000-000000...",
    "name": "string",
    "email": "string"
}
``` -->
