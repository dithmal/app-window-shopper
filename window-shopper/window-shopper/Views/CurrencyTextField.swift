//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Nadila Dithmal on 6/3/18.
//  Copyright © 2018 Nadila Dithmal. All rights reserved.
//

import UIKit
@IBDesignable

class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {    //  calls the prepare for interface builder prebuilt function
        customizedView()
    }
    
    override func awakeFromNib() {
        customizedView()                            // calls the custom view code
    }
    func customizedView() {                         // custom view code inside a special funciton
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder { // if let sequence to safely unwrap the optional 'placeholder'
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]) //create constant 'place' with the object 'NSAttributedString'
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
