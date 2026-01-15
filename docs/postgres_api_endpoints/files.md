# Files and Folders API

This document provides detailed information about the file and folder-related API endpoints available in the Constellation project.

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

## Files

### Create a New File

#### POST `/files`
Create a new file.

**Request Body:**
```json
{
  "name": "string",
  "content": "string",
  "folder_uuid": "string"
}
```

**Response:**
- `201 Created`: File successfully created.
- `400 Bad Request`: Invalid input data.

**Response Example**
```json
{
  "file_uuid": "0000-000000...",
  "name": "string",
  "content": "string",
  "folder_uuid": "string"
}
```

### Get File Details

#### GET `/files/{file_uuid}`
Retrieve file details.

**Request Parameters:**
- `file_uuid` (path): The unique identifier of the file.

**Response:**
- `200 OK`: Returns file details.
- `404 Not Found`: File not found.

**Response Example**
```json
{
  "file_uuid": "0000-000000...",
  "name": "string",
  "content": "string",
  "folder_uuid": "string"
}
```

### Update a File

#### PATCH `/files/{file_uuid}`
Update a file.

**Request Parameters:**
- `file_uuid` (path): The unique identifier of the file.

**Request Body:**
```json
{
  "name": "string",
  "content": "string"
}
```

**Response:**
- `200 OK`: File successfully updated.
- `400 Bad Request`: Invalid input data.
- `404 Not Found`: File not found.

**Response Example**
```json
{
  "file_uuid": "0000-000000...",
  "name": "string",
  "content": "string"
}
```

### Delete a File

#### DELETE `/files/{file_uuid}`
Delete a file.

**Request Parameters:**
- `file_uuid` (path): The unique identifier of the file.

**Response:**
- `200 OK`: File successfully deleted.
- `404 Not Found`: File not found.

**Response Example**
```json
{
  "message": "File deleted"
}
```

## Folders

### Create a New Folder

#### POST `/folders`
Create a new folder.

**Request Body:**
```json
{
  "name": "string",
  "parent_folder_uuid": "string"
}
```

**Response:**
- `201 Created`: Folder successfully created.
- `400 Bad Request`: Invalid input data.

**Response Example**
```json
{
  "folder_uuid": "0000-000000...",
  "name": "string",
  "parent_folder_uuid": "string"
}
```

### Get Folder Details

#### GET `/folders/{folder_uuid}`
Retrieve folder details.

**Request Parameters:**
- `folder_uuid` (path): The unique identifier of the folder.

**Response:**
- `200 OK`: Returns folder details.
- `404 Not Found`: Folder not found.

**Response Example**
```json
{
  "folder_uuid": "0000-000000...",
  "name": "string",
  "parent_folder_uuid": "string"
}
```

### Update Folder Details

#### PATCH `/folders/{folder_uuid}`
Update folder details.

**Request Parameters:**
- `folder_uuid` (path): The unique identifier of the folder.

**Request Body:**
```json
{
  "name": "string"
}
```

**Response:**
- `200 OK`: Folder details successfully updated.
- `400 Bad Request`: Invalid input data.
- `404 Not Found`: Folder not found.

**Response Example**
```json
{
  "folder_uuid": "0000-000000...",
  "name": "string",
  "parent_folder_uuid": "string"
}
```

### Delete a Folder

#### DELETE `/folders/{folder_uuid}`
Delete a folder.

**Request Parameters:**
- `folder_uuid` (path): The unique identifier of the folder.

**Response:**
- `200 OK`: Folder successfully deleted.
- `404 Not Found`: Folder not found.

**Response Example**
```json
{
  "message": "Folder deleted"
}
```

### Get Files in a Folder

#### GET `/folders/{folder_uuid}/files`
Retrieve files in a folder.

**Request Parameters:**
- `folder_uuid` (path): The unique identifier of the folder.

**Response:**
- `200 OK`: Returns a list of files in the folder.
- `404 Not Found`: Folder not found.

**Response Example**
```json
{
  "files": [
    {
      "file_uuid": "0000-000000...",
      "name": "string",
      "content": "string",
      "folder_uuid": "string"
    }
  ]
}
```
