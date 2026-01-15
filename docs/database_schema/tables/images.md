# Images Table

The Images table stores information about the images uploaded by users. It contains the following columns:

- `uuid`: The unique identifier for each image.
- `name`: The name of the image.
- `creator_uuid`: The unique identifier of the user who uploaded the image.
- `created_at`: The timestamp when the image was uploaded.
- `constellation_uuid`: The unique identifier of the constellation to which the image belongs.

## Columns

### uuid
- **Type**: UUID
- **Description**: The unique identifier for each image.
- **Example**: `567e8901-e23b-45d6-b789-890123456789`

### name
- **Type**: String
- **Description**: The name of the image.
- **Example**: `nebula.jpg`

### creator_uuid
- **Type**: UUID
- **Description**: The unique identifier of the user who uploaded the image.
- **Example**: `123e4567-e89b-12d3-a456-426614174000`

### created_at
- **Type**: Timestamp
- **Description**: The timestamp when the image was uploaded.
- **Example**: `2023-10-01 12:34:56`

### constellation_uuid
- **Type**: UUID
- **Description**: The unique identifier of the constellation to which the image belongs.
- **Example**: `345e6789-e01b-34d5-c678-678901234567`

## Relationships

- **creator_uuid**: Foreign key referencing the `uuid` column in the `Users` table.
- **constellation_uuid**: Foreign key referencing the `uuid` column in the `Constellations` table.

## Indexes

- **Primary Key**: `uuid`
- **Foreign Key**: `creator_uuid` references `Users(uuid)`
- **Foreign Key**: `constellation_uuid` references `Constellations(uuid)`

This table is used to store metadata about images uploaded by users, including the user who uploaded the image and the constellation to which the image belongs.