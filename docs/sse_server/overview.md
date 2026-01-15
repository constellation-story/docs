# SSE Server Overview

This document provides an overview of how to use the Server-Sent Events (SSE) server in the Constellation project.

## What is SSE?

Server-Sent Events (SSE) is used to push real-time updates from the server to the client over HTTP/HTTPS using EventSource. It allows the server to send updates to the client without requiring the client to request them explicitly. Allowing for efficient real-time communication, SSE is particularly useful for applications that require live updates, such as notifications, chat applications, or live data feeds (CRUD operations).

## How to Use the SSE Server

To use the SSE server in the Constellation project, follow these steps:

1. **Start the SSE Server**: The SSE server is a separate service that needs to be started before you can use it. You can start the server by running the docker compose file located at the root of the project. The command to start the server is:

    ```bash
        docker compose up --build
    ```

2. **Connect to the SSE Server**: You can connect to the SSE server using the EventSource API that support sending a header for the authorization token in your JavaScript code. The URL for the SSE server is `http://localhost:8002/sse/updates/{{constellation_uuid}}`. Here is an example of how to connect to the SSE server:

    ```js
        const eventSource = new window.EventSourcePolyfill(`http://localhost:8002/sse/updates/0be5f2a0-1e2a-440d-82e8-40eecde2de6e`, {
            headers: { "Authorization": `Bearer ${jwt}` }
        });
    ```

3. **Handle SSE Events**: Once connected, you can listen for events sent by the server:

    ```js
        eventSource.onmessage = function(event) {
            const data = JSON.parse(event.data);
            console.log("New event received:", data);
        };
    ```
