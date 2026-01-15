# Images API

This document provides detailed information about the image-related API endpoints available in the Constellation project.

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

## List All Images

### GET `/images`
Retrieve a list of all images.

**Response:**
- `200 OK`: Returns a list of images.

**Response Example**
```json
{
  "images": [
    {
      "image_uuid": "0000-000000...",
      "name": "string",
      "url": "string"
    }
  ]
}
```

## Upload a New Image

### POST `/images`
Upload a new image.

**Request Body:**
```json
{
  "file": "binary"
}
```

**Response:**
- `201 Created`: Image successfully uploaded.
- `400 Bad Request`: Invalid input data.

**Response Example**
```json
{
  "uuid": "0000-000000...",
  "filename": "string"
}
```

## Get an Image

### GET `/images/{image_uuid}`
Retrieve an image by its ID.

**Request Parameters:**
- `image_uuid` (path): The unique identifier of the image.

**Response:**
- `200 OK`: Returns image details.
- `404 Not Found`: Image not found.

**Response Example**
```json
{
  "file": "binary"
}
```

## Rename an Image

### PATCH `/images/{image_uuid}`
Rename an image.

> [!NOTE]\
> You must have write access to the image's constellation to rename it.

**Request Parameters:**
- `image_uuid` (path): The unique identifier of the image.

**Request Body:**
```json
{
  "name": "string"
}
```

**Response:**
- `200 OK`: Image name successfully updated.
- `400 Bad Request`: Invalid input data.
- `404 Not Found`: Image not found.

**Response Example**
```json
{
  "image_uuid": "0000-000000...",
  "name": "string",
  "url": "string"
}
```

## Delete an Image

### DELETE `/images/{image_uuid}`
Delete an image.

> [!NOTE]\
> You must have write access to the image's constellation to delete it.

**Request Parameters:**
- `image_uuid` (path): The unique identifier of the image.

**Response:**
- `200 OK`: Image successfully deleted.
- `404 Not Found`: Image not found.

**Response Example**
```json
{
  "message": "Image deleted"
}
```
