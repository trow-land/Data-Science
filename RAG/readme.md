#  Retrieval Augmented Generation (RAG) 

Retrieval Augmented Generation (RAG) combines the power of **retrieval-based methods** with **generative language models** to produce accurate, informative, and up-to-date responses. By integrating external knowledge sources, RAG significantly reduces hallucinations and enhances the scalability of language models.

## Why Use RAG?
- **Improved Accuracy:** Generates responses grounded in retrieved evidence.
- **Reduced Hallucinations:** Limits the risk of generating incorrect or fabricated information.
- **Access to Up-to-Date Information:** Retrieves real-time or frequently updated data.
- **Domain-Specific Knowledge:** Incorporates specialised information from curated datasets.
- **Increased Scalability:** Reduces reliance on storing vast amounts of information within model parameters.
- **Transparency:** Offers verifiable responses by linking to retrieved documents.

---

## Components of a RAG System
A RAG system typically consists of two main components:

### 1) Retriever
The retriever locates and returns relevant documents or passages from a large corpus, acting as the **memory** of the system. In this project, we use:
- **Dense Passage Retrieval (DPR)**: Uses dual encoders (question and context) to produce dense vector embeddings.
- **FAISS**: Efficient similarity search and clustering to quickly find the most relevant documents.

#### Data Preprocessing
The TriviaQA dataset, which contains **650,000 question-answer pairs** along with evidence documents, is first processed to extract:
- **Questions and Answers:** Loaded from JSON files.
- **Context Documents:** Retrieved from a set of Wikipedia articles.
- **Embeddings:** The DPR Context Encoder generates dense embeddings for each document, which are then stored in a FAISS index.

#### How the Retriever Works
1. **Data Loading:** Raw JSON files are loaded, and documents are parsed for relevant content.
2. **Encoding:** The DPR Context Encoder converts documents into dense vectors.
3. **Indexing:** The encoded vectors are stored in a FAISS index for fast similarity search.
4. **Retrieval:** Given a user query, the DPR Question Encoder generates a query embedding, which is matched against the stored vectors to find the most relevant passages.

---

### 2) Generator 
The generator uses a **language model** to generate natural language responses based on the retrieved documents. While the generator is not yet implemented in this project, it will typically leverage a model like **BART** or **T5** to synthesise coherent answers from the retrieved information.

---

##  Dataset
This project uses a subset of the **TriviaQA dataset**, which provides:
- 650,000 question-answer pairs.
- Associated Wikipedia articles as evidence documents.
- A mix of open-domain and domain-specific questions to enhance the versatility of the model.

---

## Next steps:
1) Implement a generation model
2) Evaluate how hallucinations change with RAG
