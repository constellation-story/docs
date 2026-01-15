# API Endpoints for the SSE Server

This document provides an overview of the API endpoints available for the Server-Sent Events (SSE) server in the Constellation project.

## Endpoints

### Get SSE Updates

#### GET `/sse/updates/{{constellation_uuid}}`

**Description:**

Retrieves an EventSource stream for the specified constellation UUID, allowing clients to receive real-time updates for that constellation.

**Request Parameters:**

- `constellation_uuid` (path): The UUID of the constellation for which updates are requested.

**Response:**

- `200 OK`: Returns an EventSource stream that sends updates for the specified constellation.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while retrieving updates.

**Usage Example:**

```javascript
// Example of how to connect to the SSE server using EventSource
const eventSource = new window.EventSourcePolyfill(`http://localhost:8002/sse/updates/0be5f2a0-1e2a-440d-82e8-40eecde2de6e`, {
    headers: { "Authorization": `Bearer ${jwt}` }
});
// Listening for messages from the server
eventSource.onmessage = function(event) {
    const data = JSON.parse(event.data);
    console.log("New event received:", data);
};
```

### Notify SSE Updates

#### POST `/sse/notify/{{constellation_uuid}}`

**Description:**

Sends a notification to the SSE server to trigger updates for the specified constellation UUID.

**Request Parameters:**

- `constellation_uuid` (path): The UUID of the constellation for which updates are to be notified.
- The whole body of the request is sent to the SSE server, which can include any relevant data for the update that will be sent exactly as it is to the clients connected to the SSE stream.

**Response:**

- `200 OK`: Notification sent successfully.
- `401 Unauthorized`: User not authorized.
- `403 Forbidden`: User does not have permission to access the constellation.
- `404 Not Found`: Constellation not found.
- `500 Internal Server Error`: An error occurred while sending the notification.

**Response Example:**

```json
{
  "status": "success",
  "message": "Notification sent to clients"
}
```
