# Users API

This document provides detailed information about the user-related API endpoints available in the Constellation project.

## Register a New User

### POST `/register`
Register a new user.

**Request Body:**
```json
{
  "name": "string",
  "password": "string",
  "email": "string"
}
```

**Response:**
- `201 Created`: User successfully registered.
- `400 Bad Request`: Invalid input data.

**Response Example**
```json
{
    "user_uuid": "0000-000000...",
    "access_token": "this_is_a_token",
    "token_type": "bearer"
}
```

## Login a User

### POST `/login`
Login a user.

**Request Body:**
```json
{
  "name": "string",
  "password": "string"
}
```

**Response:**
- `200 OK`: Login successful, returns JWT token.
- `401 Unauthorized`: Invalid name or password.

**Response Example**
```json
{
    "access_token": "this_is_a_token",
    "token_type": "bearer"
}
```

## Authentication

All the next API requests require authentication using a JWT bearer token. You must include the token in the `Authorization` header of your requests.

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


## Check Token and Constellation Access

### POST `/check_token/{constellation_uuid}`
Check JWT token and constellation access.

**Request Parameters:**
- `constellation_uuid` (path): The unique identifier of the constellation.

**Response:**
- `200 OK`: Token is valid and user has access.
- `401 Unauthorized`: Token is invalid or user does not have access.

**Response Example**
```json
{
  "rights": "admin"
}
```

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
```

## Delete a User

### DELETE `/users`
Delete a user.

> [!NOTE]\
> Of course, you can only delete your own user.

**Request Body:**
```json
{
  "user_uuid": "string"
}
```

**Response:**
- `200 OK`: User successfully deleted.
- `404 Not Found`: User not found.

**Response Example**
```json
{
    "message": "User deleted"
}
```

## Update a User

### PATCH `/users`
Update a user. You can update the name, email, password, or all of them, depending on the request body.

> [!NOTE]\
> Of course, you can only update your own user.

**Request Body:**
```json
{
  "uuid": "string",
  "name": "string",
  "email": "string"
}
```

**Response:**
- `200 OK`: User successfully updated.
- `400 Bad Request`: Invalid input data.
- `404 Not Found`: User not found.

**Response Example**
```json
{
    "user_uuid": "0000-000000...",
    "access_token": "this_is_a_token",
}
```
