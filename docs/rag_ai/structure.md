# Structure of the RAG AI

This document provides an overview of the structure of the RAG AI in the Constellation project, including how it interacts with the database, builds indexes, retrieves, and generates answers.

## Index building Graph

```mermaid
graph TD
    A["User"] -- Sends request to build index --> B["API"]
    B -- Fetches data from Constellation database --> C["Database"]
    C -- Processes data into chunks --> D["Chunk Processor"]
    D -- Generates embeddings --> E["Embedding Service"]
    E -- Saves embeddings to a faiss index --> F["Faiss Index"]
```

## Retrieval and Generation

```mermaid
graph TD
    A["User"] -- Sends query --> B["API"]
    B -- Load the full Faiss index --> C["Faiss Index"]
    C -- Encode the question --> D["Encoded Question"]
    D -- Retrieve top-k chunks based on the encoded question --> E["Top-k Chunks Retrieved"]
    E -- Extract Answer from chunks using qa_extractive model --> F["Extracted answer with score"]
    F -- Get the extracted answer with the best score --> G["Best extracted Answer"]
    G -- Score above the given threshold --> H["Excuse, answer not found"]
    G -- Score below the given threshold --> I["Generative AI"]
    I -- Forms a sentence from the extracted answer --> J["Return the generated response"]
    H -- Returns excuse --> K["Return the excuse"]
```
