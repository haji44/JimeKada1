//
//  TaskTextField.swift
//  Task1_UIKit
//
//  Created by kitano hajime on 2022/02/18.
//

import UIKit

class TaskTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: SHAPE
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        textAlignment = .center

        // MARK: SIZE
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        // MARK: COLOR
        textColor = .label
        tintColor = .label // tint color means input out look
        backgroundColor = .tertiarySystemBackground
        
        // MARK: FUNCTION
        self.keyboardType = .numberPad
        clearButtonMode = .whileEditing
    }
}
