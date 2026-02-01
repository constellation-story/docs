# Architecture Overview

Constellation is built as a distributed system with specialized microservices.
Each service handles a specific aspect of the platform: general-purpose data
persistence, narrative relationships as a graph, real-time collaborative editing,
live notifications, and the web application itself.

## System Diagram

...

## System Components

### Web Application (Frontend)

The web client provides the user-facing interface for all interactions with the platform.
It serves as both the public showcase and the primary application interface.

**Key Responsibilities:**

- Showcase and account creation
- Project management
- Collaborative text editing
- Narrative enrichment tools (elements, relationships, maps)
- File management and access control UI

#### Technical Stack

- **Next.js 16 w/ App Router** - Server/client component flexibility, route
  groups for organizing different app sections
- **React 19** - Latest features for better performance
- **TypeScript** - Type safety across the codebase
- **Tailwind CSS + Shadcn UI** - Rapid UI development with consistent design
  system
- **PlateJS** - Extensible rich text editor framework (chosen for its plugin
  architecture and real-time collaboration support)
- **Bun** - Fast package manager and runtime


### Core API

The Core API is the main backend service responsible for handling business logic
and persisting data. It has a multi-responsibility role as it manages accounts,
projects, attachments, files, access control, and much more.

Under the hood, it manages a PostgreSQL database instance for reliable relational
data storage.

#### Technical Stack

- **FastAPI** - Excellent type hinting and validation using **Pydantic**,
  built-in async support, automatic OpenAPI documentation
- **SQLModel** - Fusion of **Pydantic** features with the **SQLAlchemy** ORM for
  managing both data schemas and database models
- **Pytest** - De-facto standard framework for testing in modern Python
- **PostgreSQL** - Robust relational database for structured data

### Graph API

The Graph API, as its name indicates, is responsible for handling the knowledge
graph of a universe project. It holds information about `elements`, the concept
representing the unit of a universe (characters, locations, events, etc.).

It manages a Neo4j database to efficiently store and query complex relationships
between narrative elements.

#### Technical Stack

- **FastAPI** - Excellent type hinting and validation using **Pydantic**,
  built-in async support, automatic OpenAPI documentation
- **Neo4j** - Graph database optimized for relationship-heavy queries


### CRDT Server

The Conflict-free Replicated Data Type, or CRDT Server, is the service
responsible for solving multi-collaborator conflicts when editing text files
live.

It is used by the **Web Application** and the **Core API** for writing and
saving collaborative text documents.

#### Technical Stack

- **Hocuspocus** - The CRDT Yjs WebSocket backend for conflict-free real-time
  collaboration 

### SSE Server

The SSE Server is responsible for serving real-time updates to web clients
in order to dynamically update the UI with notifications and live changes.

#### Technical Stack

- **Starlette SSE** - Server-Sent Events implementation for real-time server-to-client
  communication
