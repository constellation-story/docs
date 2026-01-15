# Constellations API

This document provides detailed information about the constellation-related API endpoints available in the Constellation project.


## Authentication

All API requests require authentication using a JWT bearer token. You must include the token in the `Authorization` header of your requests.

### Example

To include the JWT token in your request headers, use the following format:

```
Authorization: Bearer <your-jwt-token>
```

### Obtaining a JWT Token

You can obtain a JWT token by logging in with your credentials. The token will be included in the response from the login endpoint.

### Example Request with JWT Token

Here is an example of how to include the JWT token in a request to the `/constellations` endpoint:

```http
GET /constellations HTTP/1.1
Host: api.example.com
Authorization: Bearer <your-jwt-token>
```

## Get All Constellations Linked to the User

### GET `/constellations`
Retrieve all constellations linked to the user.

**Response:**
- `200 OK`: Returns a list of constellations.

**Response Example**
```json
{
  "constellation_uuid": "0000-000000...",
  "name": "string"
}
```

## Create a New Constellation

### POST `/constellations`
Create a new constellation.

> [!NOTE]\
> You will have admin rights on the constellation you create.


**Request Body:**
```json
{
  "name": "string"
}
```

**Response:**
- `201 Created`: Constellation successfully created.
- `400 Bad Request`: Invalid input data.

**Response Example**
```json
{
  "constellation_uuid": "0000-000000...",
  "name": "string"
}
```

## Get a Constellation by its ID

### GET `/constellations/{constellation_uuid}`
Retrieve a constellation by its ID.

**Request Parameters:**
- `constellation_uuid` (path): The unique identifier of the constellation.

**Response:**
- `200 OK`: Returns constellation details.
- `400 Invalid constellation UUID`: Invalid constellation UUID.
- `404 Not Found`: Constellation not found.

**Response Example**
```json
{
  "root_folder_uuid": "0000-000000...",
  "name": "string"
}
```

## Update a Constellation's Name

### PATCH `/constellations/{constellation_uuid}`
Update a constellation's name.

> [!NOTE]\
> You must have write rights on the constellation to update its name.

**Request Parameters:**
- `constellation_uuid` (path): The unique identifier of the constellation.

**Request Body:**
```json
{
  "name": "string"
}
```

**Response:**
- `200 OK`: Constellation name successfully updated.
- `400 Invalid constellation UUID`: Invalid constellation UUID.
- `404 Not Found`: Constellation not found.

**Response Example**
```json
{
  "name": "string"
}
```

## Delete a Constellation by its ID

### DELETE `/constellations/{constellation_uuid}`
Delete a constellation by its ID.

> [!NOTE]\
> You must be an admin to access this endpoint

**Request Parameters:**
- `constellation_uuid` (path): The unique identifier of the constellation.

**Response:**
- `200 OK`: Constellation successfully deleted.
- `400 Invalid constellation UUID`: Invalid constellation UUID.
- `404 Not Found`: Constellation not found.

**Response Example**
```json
{
  "message": "Constellation deleted"
}
```

## Connect a User to a Constellation

### POST `/constellations/{constellation_uuid}/connect`
Connect a user to a constellation.

> [!NOTE]\
> You must have admin rights on the constellation to connect a user.

**Request Parameters:**
- `constellation_uuid` (path): The unique identifier of the constellation.
- `user_uuid_to_connect`: The unique identifier of the user
- `rights`: could be 'READ', 'COMMENT', 'WRITE' or 'ADMIN'

**Request Body:**
```json
{
  "user_uuid": "string"
}
```

**Response:**
- `200 OK`: User successfully connected to the constellation.
- `400 Bad Request`: Invalid input data.
- `404 Not Found`: Constellation or user not found.

**Response Example**
```json
{
  "message": "User connected to constellation"
}
```

## Disconnect a User from a Constellation

### POST `/constellations/{constellation_uuid}/disconnect`
Disconnect a user from a constellation.

> [!NOTE]\
> You must have admin rights on the constellation to disconnect a user.

**Request Parameters:**
- `constellation_uuid` (path): The unique identifier of the constellation.
- `user_uuid_to_disconnect`: The unique identifier of the user
- `rights`: could be 'READ', 'COMMENT', 'WRITE' or 'ADMIN'

**Request Body:**
```json
{
  "user_uuid": "string"
}
```

**Response:**
- `200 OK`: User successfully disconnected from the constellation.
- `400 Bad Request`: Invalid input data.
- `404 Not Found`: Constellation or user not found.

**Response Example**
```json
{
  "message": "User disconnected from constellation"
}
```

## Get All Users Associated with a Constellation

### GET `/constellations/{constellation_uuid}/users`
Retrieve all users associated with a constellation.

> [!NOTE]\
> Everyone with at least read rights can access this endpoint.

**Request Parameters:**
- `constellation_uuid` (path): The unique identifier of the constellation.

**Response:**
- `200 OK`: Returns a list of users associated with the constellation.
- `404 Not Found`: Constellation not found.

**Response Example**
```json
[
  {
    "uuid": "0000-000000...",
    "name": "string",
    "rights": "string"
  }
]
```


## Get the Root Structure of a Constellation

### GET `/structure/{constellation_uuid}`
Retrieve the root structure of a constellation.

**Request Parameters:**
- `constellation_uuid` (path): The unique identifier of the constellation.

**Response:**
- `200 OK`: Returns the root structure of the constellation.
- `404 Not Found`: Constellation not found.

**Response Example**
```json
{
  "uuid": "0000-000000...",
  "name": "string",
  "type": "folder",
  "children": [
    {
      "uuid": "0000-000000...",
      "name": "string",
      "type": "folder",
      "children": [
        {
          "uuid": "0000-000000...",
          "name": "string",
          "type": "file"
        }
      ]
    }
  ]
}
```

