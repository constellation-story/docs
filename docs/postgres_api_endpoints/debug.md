# Debug API

This document provides detailed information about the debug-related API endpoints available in the Constellation project.
All the debug endpoints are used for testing and debugging purposes only, and are available only in the development environment.
As it's debug-related, it doesn't require authentication.

## Get All Users

### GET `/users`
Retrieve all users.

**Response:**
- `200 OK`: Returns a list of all users.

**Response Example**
```json
{
  "users": [
    {
      "user_uuid": "0000-000000...",
      "username": "string",
      "email": "string"
    }
  ]
}
```

## Get All Files

### GET `/files`
Retrieve all files.

**Response:**
- `200 OK`: Returns a list of all files.

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

## Get All Constellations

### GET `/all_constellations`
Retrieve all constellations.

**Response:**
- `200 OK`: Returns a list of all constellations.

**Response Example**
```json
{
  "constellations": [
    {
      "constellation_uuid": "0000-000000...",
      "name": "string"
    }
  ]
}
```

## Get All Images

### GET `/all_images`
Retrieve all images.

**Response:**
- `200 OK`: Returns a list of all images.

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

## Get All Comments

### GET `/comments`
Retrieve all comments.

**Response:**
- `200 OK`: Returns a list of all comments.

**Response Example**
```json
{
  "comments": [
    {
      "comment_uuid": "0000-000000...",
      "content": "string",
      "file_uuid": "string"
    }
  ]
}
```

## Get All User Constellations

### GET `/user_constellations`
Retrieve all user constellations.

**Response:**
- `200 OK`: Returns a list of all user constellations.

**Response Example**
```json
{
  "user_constellations": [
    {
      "user_uuid": "0000-000000...",
      "constellation_uuid": "0000-000000..."
    }
  ]
}
```

## Test the Access Token

### POST `/test-token`
Test the access token.

**Request Body:**
```json
{
  "token": "string"
}
```

**Response:**
- `200 OK`: Token is valid.
- `401 Unauthorized`: Token is invalid.

**Response Example**
```json
{
  "message": "Token is valid"
}
```

## Create the Users Table

### GET `/create_table`
Create the users table.

**Response:**
- `200 OK`: Users table successfully created.

**Response Example**
```json
{
  "message": "Users table created"
}
```

## Delete All the Database

### GET `/delete_everything`
Delete all the database.

**Response:**
- `200 OK`: Database successfully deleted.

**Response Example**
```json
{
  "message": "Database deleted"
}
```

## Reset the Database

### GET `/reset`
Reset the database.

**Response:**
- `200 OK`: Database successfully reset.

**Response Example**
```json
{
  "message": "Database reset"
}
```

## Populate the Database

### GET `/populate`
Populate the database.

**Response:**
- `200 OK`: Database successfully populated.

**Response Example**
```json
{
  "message": "Database populated"
}
```
