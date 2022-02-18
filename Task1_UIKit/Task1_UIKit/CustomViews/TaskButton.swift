//
//  TaskButton.swift
//  Task1_UIKit
//
//  Created by kitano hajime on 2022/02/18.
//

import UIKit

class TaskButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    convenience init(color: UIColor, title: String) {
        self.init(frame: .zero)
        set(color: color, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        configuration = .tinted()
        configuration?.cornerStyle = .medium
    }
    
    final func set(color: UIColor, title: String) {
        // MARK: COLOR
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        
        // MARK: TEXT
        configuration?.title = title
    }
}
