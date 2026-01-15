# Database Schema

The database schema for the Constellation project consists of six tables: Users, Constellations, Files, Images, User_Constellation, and Comments. Each table has its own set of columns and relationships with other tables. This document provides an overview of the database schema, including the tables, columns, relationships, and indexes.

## Tables

### Users Table

The Users table stores information about the users of the Constellation project. It contains the following columns:

- `uuid`: The unique identifier for each user.
- `name`: The name of the user.
- `email`: The email address of the user.
- `password`: The hashed password of the user.
- `created_at`: The timestamp when the user was created.
- `last_login`: The timestamp of the user's last login.

### Constellations Table

The Constellations table stores information about the constellations created by users. It contains the following columns:

- `uuid`: The unique identifier for each constellation.
- `name`: The name of the constellation.
- `description`: The description of the constellation.
- `root_folder_uuid`: The unique identifier of the root folder of the constellation.
- `created_at`: The timestamp when the constellation was created.

### Files Table

The Files table stores information about the files uploaded by users. It contains the following columns:

- `uuid`: The unique identifier for each file.
- `name`: The name of the file.
- `path`: The path to the file on the server.
- `type`: The type of the file ('FILE' or 'FOLDER').
- `creator_uuid`: The unique identifier of the user who uploaded the file.
- `created_at`: The timestamp when the file was uploaded.
- `last_editor_uuid`: The unique identifier of the user who last edited the file.
- `last_modification`: The timestamp of the file's last edit.
- `constellation_uuid`: The unique identifier of the constellation to which the file belongs.

### Images Table

The Images table stores information about the images uploaded by users. It contains the following columns:

- `uuid`: The unique identifier for each image.
- `name`: The name of the image.
- `creator_uuid`: The unique identifier of the user who uploaded the image.
- `created_at`: The timestamp when the image was uploaded.
- `constellation_uuid`: The unique identifier of the constellation to which the image belongs.

### User_Constellation Table

The User_Constellation table stores information about the users who have access to constellations. It contains the following columns:

- `user_uuid`: The unique identifier of the user.
- `constellation_uuid`: The unique identifier of the constellation.
- `rights`: The rights the user has on the constellation. See the [Rights](https://kenan-blasius.github.io/doc-constellation-backend/) for more information.

### Comments Table

The Comments table stores information about the comments made by users on constellations and files. It contains the following columns:

- `uuid`: The unique identifier for each comment.
- `content`: The content of the comment.
- `creator_uuid`: The unique identifier of the user who made the comment.
- `created_at`: The timestamp when the comment was made.
- `file_uuid`: The unique identifier of the file on which the comment was made.
- `parent_uuid`: The unique identifier of the comment parent (if it is a reply).
