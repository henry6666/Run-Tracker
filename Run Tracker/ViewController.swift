//
//  ViewController.swift
//  Run Tracker
//
//  Created by Henry Aguinaga on 2017-02-18.
//  Copyright © 2017 Henry Aguinaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
    }

    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        
    }

}

