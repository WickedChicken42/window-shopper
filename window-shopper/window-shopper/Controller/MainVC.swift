//
//  ViewController.swift
//  window-shopper
//
//  Created by James Ullom on 8/28/18.
//  Copyright © 2018 Hammer of the Gods Software. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet var wageTxt: CurrencyTextField!
    @IBOutlet var priceTxt: CurrencyTextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Programmatically create a UI button to be assigned to the textfield's acceessory inout view
        // so that it show up when the keyboard shows up
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.512504518, blue: 0, alpha: 1)
        // Always use .setTitle to set the text on a button
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        // Added the new calcBtn to the input view (the keyboard)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }
    
    @objc func calculate() {
        print("We got here!")
    }
  

}

