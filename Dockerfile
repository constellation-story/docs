# Stage 1: Build static site with MkDocs using uvx (no repo Python deps needed)
FROM ghcr.io/astral-sh/uv:alpine3.22 AS builder
WORKDIR /build
# Install mkdocs and mkdocs-material
RUN uv tool install mkdocs --with mkdocs-material

# Copy only what MkDocs needs
COPY README.md README.md
COPY mkdocs.yml mkdocs.yml
COPY docs/ docs/

# Build into /site/.site
RUN uv tool run mkdocs build

# Stage 2: Serve with Nginx
FROM nginx:alpine
# Remove default config and add a simple static site server
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /build/site /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
