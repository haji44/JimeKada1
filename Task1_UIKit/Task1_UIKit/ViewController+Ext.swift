//
//  ViewController+Ext.swift
//  Task1_UIKit
//
//  Created by kitano hajime on 2022/02/18.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubViews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
    
}
