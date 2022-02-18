//
//  TaskLabel.swift
//  Task1_UIKit
//
//  Created by kitano hajime on 2022/02/18.
//

import UIKit

class TaskLabel: UILabel {
    
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
        textAlignment = .center
        layer.cornerRadius = 10
        clipsToBounds = true
        // MARK: COLOR
        backgroundColor = .secondarySystemBackground
        textColor = .systemBlue
        // MARK: TEXT
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 1.4
        lineBreakMode = .byTruncatingTail
    }
}
