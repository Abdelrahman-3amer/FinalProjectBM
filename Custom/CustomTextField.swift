//
//  CustomTextField.swift
//  FinalProjectBM
//
//  Created by SONOMA on 31/07/2024.
//

import UIKit

class CustomTextField: UITextField {

    // Custom properties
    private let padding: CGFloat
    private let borderColor: UIColor
    private let borderWidth: CGFloat
    private let cornerRadius: CGFloat

    init(padding: CGFloat, borderColor: UIColor, borderWidth: CGFloat, cornerRadius: CGFloat) {
        self.padding = padding
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        self.cornerRadius = cornerRadius
        
        super.init(frame: .zero)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        self.padding = 10
        self.borderColor = .black
        self.borderWidth = 1
        self.cornerRadius = 5
        
        super.init(coder: coder)
        
        self.setupView()
    }
    
    private func setupView() {
        // Custom border
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        
        // Custom font and color
        self.font = UIFont.systemFont(ofSize: 16)
        self.textColor = .darkGray
        
        // Additional customization
        self.backgroundColor = .white
        self.autocorrectionType = .no
        self.clearButtonMode = .whileEditing
    }
    
    // Text Rect for Editing and Placeholder
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: padding)
    }
}

