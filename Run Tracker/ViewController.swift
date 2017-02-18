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
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pkrRunPicker.delegate = self
        pkrRunPicker.dataSource = self
        textfieldRunName.delegate = self
        textfieldRunDistance.delegate = self
        textfieldRunTime.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        <#code#>
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
    }

    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        
    }

}













