# News Article Highlights Summarisation Project

## Overview

This project focuses on fine-tuning a pre-trained BART large language model to generate concise, one- or two-sentence highlights from CNN and DailyMail news articles. The goal is to improve the model’s ability to summarise lengthy articles while maintaining key information. The project evaluates the performance of the fine-tuned model using the ROUGE metric and compares its generated summaries to human-written highlights.

## Project Structure

- **News_article_highlights.ipynb**: Jupyter notebook containing the implementation for generating summaries of news articles using a pre-trained language model. It includes data loading, preprocessing, tokenisation, fine-tuning, summary generation, and result evaluation.
- **dataset**: The dataset used for this project is the [CNN_DailyMail](https://huggingface.co/datasets/abisee/cnn_dailymail) dataset from Hugging Face.

## Dataset

The dataset consists of a collection of news articles and their respective human-written highlights. The highlights are short summaries written by the article authors and serve as ground truth references. The dataset was created to train large language models to summarise long text inputs into brief, informative highlights.

- **Articles**: Full-length news articles used as input.
- **Highlights**: Human-written summaries used for evaluation and comparison with the model's output.

### Dataset Statistics:
- **Training Samples**: 287,113
- **Validation Samples**: 13,368
- **Test Samples**: 11,490

## Requirements

To run the project, you'll need the following Python libraries installed:

- `transformers`: For loading and fine-tuning the pre-trained language model.
- `datasets`: For loading and managing the dataset.
- `torch`: For tensor operations and model training.
- `evaluate`: For calculating metrics such as ROUGE.
- `tqdm`: For progress bars.
- `pandas`: For data manipulation.

## Model Used

The project utilises a pre-trained BART model from the Hugging Face library for text summarisation. Specifically:

- **Model**: `facebook/bart-large-cnn`
- **Tokenizer**: `facebook/bart-large-cnn`

The model was chosen for its effectiveness in summarisation tasks and its ability to handle relatively long text inputs.

## Preprocessing

1. **Tokenization**: Each article is tokenized using the model's tokenizer, with a maximum token length of 1024 to fit within the model's input size limits.
2. **Truncation**: Articles that exceed the token length are truncated to ensure efficient processing.
3. **Batch Padding**: Uses a data collator to pad and batch tokenized inputs efficiently.

> **Note:** Initially, the maximum token length was set to 512, but it was increased to 1024 to accommodate longer input articles and improve summary quality.

## Fine-Tuning

The model was fine-tuned using the `Trainer` API from the `transformers` library. Training parameters included:
- Mixed-precision training (FP16) for efficiency.
- Regular evaluation during training.
- Batch size and learning rate chosen for balanced performance and speed.

## Evaluation

After generating summaries for the test set, the following metrics were used for evaluation:

- **ROUGE-1** (Unigram overlap)
- **ROUGE-2** (Bigram overlap)
- **ROUGE-L** (Longest Common Subsequence)

### Results

| **Metric**    | **Score** |
|--------------|-----------|
| ROUGE-1      | 0.3557    |
| ROUGE-2      | 0.1579    |
| ROUGE-L      | 0.2630    |
| ROUGE-Lsum   | 0.2622    |

The generated summaries often captured key points effectively, but there was some variation from the human-written highlights, resulting in moderate ROUGE scores.

## Example Outputs

The table below shows examples of generated summaries compared to the original highlights from the dataset:

| **Article** | **Human-written Highlights** | **Model-generated Summary** |
|-------------|------------------------------|-----------------------------|
| Article 1   | Highlight 1                   | Summary 1                   |
| Article 2   | Highlight 2                   | Summary 2                   |

## Challenges

- **Input Truncation:** Long articles are truncated to fit the model’s input limit, potentially omitting relevant information.
- **Highlight Lengths:** Some human-written highlights are longer than expected (3–4 sentences), which may confuse the model when training it to generate shorter outputs.
- **Evaluation Limitations:** Condensing long texts into brief highlights is inherently challenging, and differences in wording negatively impact ROUGE scores despite semantic similarity.

## Future Work

- Experiment with hyperparameter tuning to improve summarisation quality.
- Train on a larger portion or the entirety of the CNN/DailyMail dataset to enhance generalisation.
- Explore advanced techniques like prompt engineering or model ensembling for better performance.

## Conclusion

This project demonstrates how to fine-tune a pre-trained BART model for summarising long news articles into short highlights. While the model achieves reasonable ROUGE scores, improvements are possible through further fine-tuning and better handling of lengthy input texts.

## References

- Hugging Face Transformers: [https://huggingface.co/transformers/](https://huggingface.co/transformers/)
- CNN/DailyMail Dataset: [https://huggingface.co/datasets/cnn_dailymail](https://huggingface.co/datasets/cnn_dailymail)
