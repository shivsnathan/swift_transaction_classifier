import TabularData
import CreateML
import Foundation

func runMLWorkflow() {

    let csvURL = URL(fileURLWithPath: "/Users/siva/Documents/cc_transac_ml_model/processed_transactions.csv")
    do {
        let dataFrame = try DataFrame(contentsOfCSVFile: csvURL)
        let split = dataFrame.randomSplit(by: 0.8, seed: 42)
        let trainingDF = DataFrame(split.0)
        let testingDF = DataFrame(split.1)
        
        let classifier = try MLRandomForestClassifier(
            trainingData: trainingDF,
            targetColumn: "category"
        )
        
        let eval = classifier.evaluation(on: testingDF)
        let error = eval.classificationError
        let accuracy = 1.0 - error
        print("Classification Error: \(error)")
        print("Accuracy: \(accuracy)")
        
        // Save the model as .mlmodel
        let saveURL = URL(fileURLWithPath: "/Users/siva/Documents/cc_transac_ml_model/TransactionClassifier.mlmodel")
        try classifier.write(to: saveURL)
        print("Model saved to \(saveURL.path)")
        
        
       } catch {
         print("Failed 3: \(error)")
        }
}

runMLWorkflow()

