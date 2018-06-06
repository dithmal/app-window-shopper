//
//  ViewController.swift
//  window-shopper
//
//  Created by Nadila Dithmal on 6/1/18.
//  Copyright © 2018 Nadila Dithmal. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //create IBOutlets for two text fields
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60)) //create a button
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5945168734, blue: 0.00580148818, alpha: 1)     //assign a color to the button
        calcBtn.setTitle("Calculate", for: .normal)     //set text of the button
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)     //set text color for the button
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside) //create target for the button
        
        // .inputAccessoryView activates the calcBtn
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }

    
    @objc func calculate() {
        print("We got here") //flag to identify the program entering calculate function
    }


}

