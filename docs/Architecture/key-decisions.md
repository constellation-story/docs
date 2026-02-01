  
# Key Architectural Decisions

## Microservices Architecture

We separated concerns into distinct services to achieve:

- **Focused scaling** - Scale each service independently based on load (e.g., CRDT
  server during high collaboration activity)
- **Technology flexibility** - Use the best tool for each job without compromise
- **Isolated deployments** - Deploy and update services independently
- **Clear boundaries** - Each service has a well-defined responsibility

## Dual Database Strategy (PostgreSQL + Neo4j)

We use both PostgreSQL and Neo4j to leverage their respective strengths:

- **PostgreSQL** handles traditional relational data where ACID guarantees are
  critical (users, projects, files, permissions)
- **Neo4j** excels at managing and querying complex relationships between story
  elements (character connections, plot threads, location hierarchies)

This allows efficient graph traversal queries without compromising on transactional
integrity for core business data.

## CRDT for Collaboration

CRDTs (Conflict-free Replicated Data Types) enable true real-time collaboration
without central conflict resolution. This makes the editing experience seamless
for multiple users working on the same document simultaneously, with automatic
conflict resolution at the data structure level.

We chose **Yjs with Hocuspocus** for its maturity, performance, and excellent
ecosystem support (including PlateJS integration).

## Server-Sent Events for Notifications

SSE provides a lightweight, unidirectional communication channel from server to
client, perfect for real-time notifications and UI updates. Unlike WebSockets,
SSE works over standard HTTP, simplifies the infrastructure, and is sufficient
for our notification use case.

# Communication Patterns

- **REST APIs** - Web app communicates with Core and Graph APIs via RESTful endpoints
- **WebSockets** - CRDT server maintains persistent bidirectional connections for
  real-time document synchronization
- **Server-Sent Events** - SSE server pushes notifications and updates to connected clients
- **Authentication** - JWT tokens shared across services for stateless auth
- **Service-to-Service** - CRDT server calls Core API to persist document snapshots

# Development Principles

- **Type safety first** - TypeScript on frontend, type hints in Python backends
- **API documentation** - Automatic OpenAPI docs for all REST endpoints
- **Testing** - Comprehensive test suites for critical business logic
- **Self-hostability** - All services designed to run in containerized environments
- **No vendor lock-in** - Open-source technologies and standard protocols
