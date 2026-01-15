# Testing

## GitHub Actions

The project uses GitHub Actions to run tests automatically on every push and pull request. The workflow is defined in `.github/workflows/test-SERVICE.yml`. It includes steps to:

- Set up the environment
- Install dependencies
- Run tests for the specified service (Neo4j, Postgres, SSE)
- Generate and upload code coverage reports in artifacts and upload it to Github Pages when the branch is `main`

When the deploying GitHub Action is triggered, it will automatically run the tests and deploy only if the tests pass.

## Run tests locally

To run the tests locally, you can use the following commands:

First, start the backend server:

```bash
docker compose up --build
```

Then, run the tests for the specific service:

### Neo4j

```bash
# Install the tests dependencies
pip install -r ./api_neo4j/tests/requirements.txt

# Run the tests
python3 ./api_neo4j/tests/test_main.py
```

### Postgres

```bash
# Install the tests dependencies
pip install -r ./api_postgres/tests/requirements.txt

# Run the tests
python3 ./api_postgres/tests/test_main.py
```

### SSE

```bash
# Install the tests dependencies
pip install -r ./sse_server/tests/requirements.txt

# Run the tests
python3 ./sse_server/tests/test_main.py
```

### CRDT

The CRDT tests are not yet implemented.

### RAG AI

The RAG AI tests are not automated with github actions due to the missing power capacity of the GitHub runner. You can run the tests locally by following these steps:

1. Start the backend server:

    ```bash
    docker compose up --build
    ```

2. Run the frontend server:

    ```bash
    # In the constellation (frontend repository) directory
    bun install
    bun dev
    ```

3. Connect to the frontend server at `http://localhost:3000` and do the following:

    - Create a constellation
    - Create a collection
    - Create a File
    - Copy Paste the content of the story you want to test.

4. The tests are designed to query the RAG AI service with predefined questions.

    - For Alice, you can use the questions in `test_query_alice.py`.
    - For La Parure, you can use the questions in `test_query_la_parure.py`.

    Make sure to update the `constellation_uuid`, `username`, and `password` variables in the test files to match your setup.

5. Run the tests:

    ```bash
    # In the constellation-backend (backend repository) directory

    # If you want to test the Alice story, you can run:
    python3 ./rag_ai/tests/test_query_alice.py

    # If you want to test the La Parure story, you can run:
    python3 ./rag_ai/tests/test_query_la_parure.py
    ```

6. Check the output of the tests in the terminal. The tests will print the results of the queries and whether they were successful or not with a percentage of success.
