# CRDT Server Overview

This document provides an overview of how to use the CRDT server in the Constellation project.

## Information

The CRDT server uses [hocuspocus](https://hocuspocus.dev/) for real-time collaboration and synchronization.

The CRDT Server was made to be used with the [platejs](https://platejs.org/) library, which provides a rich text editor with collaborative features and manages the Yjs documents internally.

For more information on how to use the CRDT server, you can refer to the [hocuspocus documentation](https://hocuspocus.dev/docs/) and the [platejs documentation](https://platejs.org/docs/).

## How to use the CRDT server

To use the CRDT server, follow these steps:

1. **Start the CRDT server**: The CRDT server is a separate service that needs to be started before you can use it. You can start the server by starting the docker compose file located at the root of the project. The command to start the server is:

   ```bash
    docker compose up --build
   ```

2. **Set the room name**: The CRDT server uses rooms to organize data. You need to set the room name before you can use the server. You can set the room name using the following code:

   ```js
    // The room name should be formed as: postgres/<constellation_uuid>/<file_uuid> or neo4j/<constellation_uuid>/<node_uuid>/<attribute_name>
    // For example, if you are using PostgreSQL and your constellation UUID is "1234" and your file UUID is "5678", the room name would be:
    const roomname = `postgres/1234/5678`
    // If you are using Neo4j and your constellation UUID is "1234", your node UUID is "5678", and your attribute name is "story", the room name would be:
    const roomname = `neo4j/1234/5678/story`
   ```

3. **Set the JWT token**: The CRDT server requires a JWT token to authenticate the user. You can set the JWT token in the providers options when using platejs.

   ```js
      const jwt = // get the JWT token from your authentication system

      // In the patejs configuration, you can set the JWT token like this in the providers array:
      providers: [
         {
            type: 'hocuspocus',
            options: {
               name: roomname,
               url: 'ws://localhost:8003', // use the public ws server
               token: jwt,
            }
         }
      ]
   ```
