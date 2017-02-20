//
//  DesignableButton.swift
//  test
//
//  Created by Henry Aguinaga on 2017-02-17.
//  Copyright © 2017 Henry Aguinaga. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {


    @IBInspectable var borderWith: CGFloat = 0.0 {
    
        didSet {
            self.layer.borderWidth = borderWith
        }

    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
    
        didSet {
            self.layer.borderColor = borderColor.cgColor
        
        }
    }
    @IBInspectable var cornerRadious : CGFloat = 0 {
        
        didSet {
            self.layer.cornerRadius = cornerRadious
            
        }
    }

}
