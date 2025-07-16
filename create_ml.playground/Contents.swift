import Foundation
import CreateML

let datasetURL = URL(fileURLWithPath: "/Users/Documents/cc_transac_dataset_uae.csv")

do {
    let data = try MLDataTable(contentsOf: datasetURL)

    // Split data 80/20
    let (trainingData, testingData) = data.randomSplit(by: 0.8, seed: 42)

    // Train classifier using "Category" as label, features auto-detected
    let model = try MLClassifier(trainingData: trainingData,
                                 targetColumn: "Category")
    // Evaluate
    let evaluation = model.evaluation(on: testingData)
    print("Accuracy: \(evaluation.description)")

    // Save the model
    let modelURL = URL(fileURLWithPath: "/Users/Documents/TransactionClassifier.mlmodel")
    let metadata = MLModelMetadata(author: "Siva Rama Lingam",
                                   shortDescription: "Spending category classifier",
                                   license: "MIT",
                                   version: "1.0")

    try model.write(to: modelURL,
                    metadata: metadata)

    print("Model saved to: \(modelURL.path)")
} catch {
    print("Error: \(error)")
}

