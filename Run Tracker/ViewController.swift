//
//  ViewController.swift
//  Run Tracker
//
//  Created by Henry Aguinaga on 2017-02-18.
//  Copyright © 2017 Henry Aguinaga. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    // IBOutlets
    @IBOutlet weak var textfieldRunName: UITextField!
    @IBOutlet weak var textfieldRunDistance: UITextField!
    @IBOutlet weak var textfieldRunTime: UITextField!
    @IBOutlet weak var labelRunNameDisplay: UILabel!
    @IBOutlet weak var labelRunDistanceDisplay: UILabel!
    @IBOutlet weak var labelRunTimeDisplay: UILabel!
    @IBOutlet weak var pkrRunPicker: UIPickerView!
    
    var listOfRuns = [Run]() // List of run objects
    var listOfRunNames = [String]() // To populate the picker
    var managedObjectContext: NSManagedObjectContext!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pkrRunPicker.delegate = self
        pkrRunPicker.dataSource = self
        textfieldRunName.delegate = self
        textfieldRunDistance.delegate = self
        textfieldRunTime.delegate = self
        
        
        let appDeletate = UIApplication.shared.delegate as! AppDelegate
        managedObjectContext = appDeletate.persistentContainer.viewContext
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listOfRunNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listOfRunNames[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let chosenRunNames = listOfRunNames[row]
    
        for run in listOfRuns {
            if run.runname == chosenRunNames {
                let runPace = Double(run.runtime!)! / Double(run.rundistance!)! // minutes/kilometer
                labelRunNameDisplay.text = "name: " + run.runname!
                labelRunDistanceDisplay.text = "Distance: " + run.rundistance! + " km"
                labelRunTimeDisplay.text = "Time: " + run.runtime! + " min (" + String(format: "%.2f", runPace) + "min/km"
                // Time: 20 min (5.00 min/km)
            }
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let allowCharacters = NSCharacterSet(charactersIn: "0123456789.")
        
        switch textField {
        case textfieldRunTime, textfieldRunDistance:
            if let _ = string.rangeOfCharacter(from: allowCharacters as CharacterSet) {
            
                return true
            } else {
                return false
            }
            
        default:
            return true
        }
        
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        if !listOfRunNames.contains(textfieldRunName.text!) && !(textfieldRunDistance.text?.isEmpty)! && !(textfieldRunTime.text?.isEmpty)! {
        
            let newRun = NSEntityDescription.insertNewObject(forEntityName: "Run", into: managedObjectContext) as! Run
        
            newRun.runname = textfieldRunName.text
            newRun.rundistance = textfieldRunDistance.text
            newRun.runtime = textfieldRunTime.text
            
            
            do {
                try managedObjectContext.save()
                listOfRunNames.append(newRun.runname!)
                listOfRuns.append(newRun)
                
                
                
            } catch {
                print("Run could not be saved!")
            }
            
            self.pkrRunPicker.reloadAllComponents()

            
        }
        
        textfieldRunName.text?.removeAll()
        textfieldRunDistance.text?.removeAll()
        textfieldRunTime.text?.removeAll()

        
        
    }

    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        
    }
    
    func fetchRuns() {
        
    }

}













