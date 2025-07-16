
# 💳 Credit Card Spending Category Classifier

A Core ML-powered model that predicts the spending category of a credit card transaction based on its **description** and **amount**. Built using **Apple’s Create ML** and trained on real-world, labeled transaction data.

---

## 📦 Features

- 🔍 Uses **Description** (text) and **Amount** (numeric) as input features  
- 🎯 Predicts one of **12 common spending categories**
- 📈 Achieves **90.27% accuracy** on validation data
- 📱 Designed for seamless integration with iOS apps using Core ML
- 🧠 Built with `LogisticRegressionClassifier` in Create ML

---

## 🧠 Model Details

| Parameter         | Value     |
|------------------|-----------|
| Algorithm         | Logistic Regression Classifier |
| Max Iterations    | 10        |
| L1 Penalty        | 0.01      |
| L2 Penalty        | 0.01      |
| Feature Rescaling | ✅        |
| Feature Columns   | `Description`, `Amount` |
| Target Column     | `Category` |

---

## 📊 Dataset Summary

Balanced dataset with **1,420** labeled transactions across 12 categories:

| Category       | Count |
|----------------|-------|
| Bills          | 100   |
| Clothing       | 100   |
| EMI            | 100   |
| Entertainment  | 100   |
| Food           | 192   |
| Fuel           | 100   |
| Grocery        | 228   |
| Healthcare     | 100   |
| Miscellaneous  | 100   |
| Shopping       | 100   |
| Transport      | 100   |
| Travel         | 100   |

---

## 🎯 Model Performance

**Validation Accuracy**: `90.27%`  
**Training Accuracy**: `100.00%`

### Sample Precision & Recall

| Category      | Precision | Recall |
|---------------|-----------|--------|
| Food          | 100.00%   | 80.00% |
| Grocery       | 64.29%    | 100.00% |
| EMI           | 100.00%   | 100.00% |
| Travel        | 100.00%   | 100.00% |
| Miscellaneous | 100.00%   | 85.71% |
| Transport     | 100.00%   | 71.43% |

---

## 📂 Files

- `transaction_category.mlmodel` – Core ML model file
- `dataset.csv` – Labeled training data
- `create-ml-training.swift` – Swift Playground script used for training (optional)
- `LICENSE` – MIT License

---

## 🔌 Integration

1. Add the `.mlmodel` file to your iOS Xcode project.
2. Use `MLModel` or `TransactionCategoryClassifier` (auto-generated class).
3. Prepare inputs like:

```swift
let prediction = try model.prediction(
    Description: "Carrefour Market",
    Amount: 132.50
)
print(prediction.Category)
````

---

## ⚠️ Notes

* Deprecated `MLDataTable` APIs are still used for compatibility; will migrate to `DataFrame` in future.
* Core ML currently doesn't support `ColumnTransformer` or `TfidfVectorizer` from scikit-learn, so this model was trained purely in **Create ML**.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---
