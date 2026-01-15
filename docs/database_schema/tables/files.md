# Files Table

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

## Columns

### uuid
- **Type**: UUID
- **Description**: The unique identifier for each file.
- **Example**: `789e0123-e45b-67d8-a901-234567890123`

### name
- **Type**: String
- **Description**: The name of the file.
- **Example**: `document.txt`

### path
- **Type**: String
- **Description**: The path to the file on the server.
- **Example**: `/uploads/documents/document.txt`

### type
- **Type**: String
- **Description**: The type of the file ('FILE' or 'FOLDER').
- **Example**: `FILE`

### creator_uuid
- **Type**: UUID
- **Description**: The unique identifier of the user who uploaded the file.
- **Example**: `123e4567-e89b-12d3-a456-426614174000`

### created_at
- **Type**: Timestamp
- **Description**: The timestamp when the file was uploaded.
- **Example**: `2023-10-01 12:34:56`

### last_editor_uuid
- **Type**: UUID
- **Description**: The unique identifier of the user who last edited the file.
- **Example**: `234e5678-e90b-23d4-b567-567890123456`

### last_modification
- **Type**: Timestamp
- **Description**: The timestamp of the file's last edit.
- **Example**: `2023-10-10 08:22:33`

### constellation_uuid
- **Type**: UUID
- **Description**: The unique identifier of the constellation to which the file belongs.
- **Example**: `345e6789-e01b-34d5-c678-678901234567`

## Relationships

- **creator_uuid**: Foreign key referencing the `uuid` column in the `Users` table.
- **last_editor_uuid**: Foreign key referencing the `uuid` column in the `Users` table.
- **constellation_uuid**: Foreign key referencing the `uuid` column in the `Constellations` table.

## Indexes

- **Primary Key**: `uuid`
- **Foreign Key**: `creator_uuid` references `Users(uuid)`
- **Foreign Key**: `last_editor_uuid` references `Users(uuid)`
- **Foreign Key**: `constellation_uuid` references `Constellations(uuid)`

This table is used to store metadata about files uploaded by users, including the user who uploaded the file, the user who last edited the file, and the constellation to which the file belongs.