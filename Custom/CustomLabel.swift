//
//  CustomLabel.swift
//  FinalProjectBM
//
//  Created by SONOMA on 31/07/2024.
//

import UIKit

@IBDesignable
class CustomLabel: UILabel {

   
    @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {
                self.layer.cornerRadius = cornerRadius
                self.layer.masksToBounds = cornerRadius > 0
            }
        }

        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                self.layer.borderWidth = borderWidth
            }
        }

        @IBInspectable var borderColor: UIColor = UIColor.clear {
            didSet {
                self.layer.borderColor = borderColor.cgColor
            }
        }

}
