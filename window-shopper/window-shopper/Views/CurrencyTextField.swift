//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by James Ullom on 8/28/18.
//  Copyright © 2018 Hammer of the Gods Software. All rights reserved.
//

import UIKit

// Add this class attribute to allow the custom class to be viewable in InterfaceBuilder
@IBDesignable
class CurrencyTextField: UITextField {
    
    // Added to support the InterfaceBuilder to show my customized button in IB
    // in conjunction with the class attribute @IBDesignable
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        customizeView()
    }
    
    func customizeView() {
        // set a white backgriound with an opacity of 25%, rounded corners and centered text
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        // Added to ensure we retain rounded corners since we used the Draw func
        clipsToBounds = true

        // setting the text to be white
        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                           attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)] )
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }

    }
    
    // Performing the Draw manually so that we can add the users current locale currency symbol.
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8814387321, green: 0.8761994243, blue: 0.8854663968, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        // Added to ensure we retain rounded corners
        currencyLbl.clipsToBounds = true
        
        // Create and add the Formatter to the custom text field so that it will display the users currency symbol based on their current locale.
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

}
