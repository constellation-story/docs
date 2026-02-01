# Architecture Overview

Constellation is built of a distributed system with specialized microservices.
Each service handles a specific aspect of the platform: general purpose data
persistence, narrative relationships as graph, real-time collaboration editing,
and the web application itself.

## System Components

### Web Application (frontend)

This is the web client. The interface to be seen and interracted by users.
It had both the role of being the public forefront of the product and the direct
application for the product.

Showcase, account creation, project managment, collaborative editing,
narrative enrichisment, etc... Are some of the main responsabilities of the
application through interracting with the user interface.

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
projects, attachments, files, access and many more.

Under the hood it does all this by handling a PostgreSQL database instance.

#### Technical Stack

- **FastAPI** - excellent type inting and validation using **Pydantic**,
  built-in async support, automatic OpenAPI documentation
- **SQLModel** - fusion of **Pydantic** features with the **SQLAlchemy** ORM for
  managing both data schemas and database models
- **Pytest** - de-facto standard framework for testing in modern Python
- **PostgreSQL**

### Graph API

The Graph API, as it's name indicates, is responsible for handling the knowledge
graph of a universe project. It holds information about `elements`, the concept
representing the unit of a universe.

It does so by managing a Neo4J database.

#### Technical Stack

- **FastAPI** - excellent type inting and validation using **Pydantic**,
  built-in async support, automatic OpenAPI documentation


### CRDT Server

The Conflict-free Replicated Data Type, or CRDT Server is the service
responsible for solving multi-collaborator conflicts when editing text files
live.

It is used by the **Web Application** and the **Core API** for writing and
saving collaborative text documents.

#### Technical Stack

- **Hocusposcus** - The CRDT Yjs WebSocket backend for conflict-free real-time
  collaboration 

### SSE Server

The SSE Server is responsible for serving real-time updates to web clients in
order to dynamically update UI.

#### Technical Stack

- **Starlette SSE** - ...
