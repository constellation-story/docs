# Users Table

The Users table stores information about the users of the Constellation project. It contains the following columns:

- `uuid`: The unique identifier for each user.
- `name`: The name of the user.
- `email`: The email address of the user.
- `password`: The hashed password of the user.
- `created_at`: The timestamp when the user was created.
- `last_login`: The timestamp of the user's last login.

## Columns

### uuid
- **Type**: UUID
- **Description**: The unique identifier for each user.
- **Example**: `123e4567-e89b-12d3-a456-426614174000`

### name
- **Type**: String
- **Description**: The name of the user.
- **Example**: `John Doe`

### email
- **Type**: String
- **Description**: The email address of the user.
- **Example**: `john.doe@example.com`

### password
- **Type**: String
- **Description**: The hashed password of the user.
- **Example**: `$2a$12$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36Zf4d8z6aPq3F3F3F3F3F3`

### created_at
- **Type**: Timestamp
- **Description**: The timestamp when the user was created.
- **Example**: `2023-10-01 12:34:56`

### last_login
- **Type**: Timestamp
- **Description**: The timestamp of the user's last login.
- **Example**: `2023-10-10 08:22:33`

## Relationships

- None

## Indexes

- **Primary Key**: `uuid`
- **Unique**: `email`

This table is used to store metadata about users, including their unique identifier, name, email address, hashed password, creation timestamp, and last login timestamp.