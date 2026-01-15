# Constellations Table

The Constellations table stores information about the constellations created by users. It contains the following columns:

- `uuid`: The unique identifier for each constellation.
- `name`: The name of the constellation.
- `description`: The description of the constellation.
- `root_folder_uuid`: The unique identifier of the root folder of the constellation.
- `created_at`: The timestamp when the constellation was created.

## Columns

### uuid
- **Type**: UUID
- **Description**: The unique identifier for each constellation.
- **Example**: `123e4567-e89b-12d3-a456-426614174000`

### name
- **Type**: String
- **Description**: The name of the constellation.
- **Example**: `Orion`

### description
- **Type**: Text
- **Description**: The description of the constellation.
- **Example**: `A prominent constellation located on the celestial equator and visible throughout the world.`

### root_folder_uuid
- **Type**: UUID
- **Description**: The unique identifier of the root folder of the constellation.
- **Example**: `456e7890-e12b-34d5-a678-426614174001`

### created_at
- **Type**: Timestamp
- **Description**: The timestamp when the constellation was created.
- **Example**: `2023-10-01 12:34:56`

## Relationships

- **root_folder_uuid**: Foreign key referencing the `uuid` column in the `Files` table.

## Indexes

- **Primary Key**: `uuid`
- **Foreign Key**: `root_folder_uuid` references `Files(uuid)`

This table is used to store metadata about constellations created by users, including the unique identifier, name, description, root folder, and creation timestamp.