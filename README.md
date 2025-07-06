# Transaction Category Classifier

A Swift-based machine learning workflow to train, evaluate, and save a random forest classifier for categorizing credit card transactions.

## About The Project

This project demonstrates an end-to-end pipeline for training a machine learning model on tabular transaction data. It uses Swift's CreateML and TabularData frameworks to:

- Load and preprocess transaction data from a CSV file  
- Split data into training and testing sets  
- Train a random forest classifier to predict transaction categories  
- Evaluate model accuracy  
- Save the trained model as a `.mlmodel` file for later use  

This can be used as a foundation for building transaction categorization tools or integrating ML models into Swift applications.

## Getting Started

### Prerequisites

- macOS with Swift 5.5+  
- Xcode 13+ (for CreateML support)  
- CSV file of processed transactions with a `category` column  

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/transaction-category-classifier.git
   cd transaction-category-classifier
   ```

2. Place your processed CSV file at the path specified in the script or update the path accordingly.

## Usage

Run the Swift script to train and save the model:

```bash
swift run TransactionClassifier.swift
```

The script will print classification error and accuracy, then save the model to the specified location.
