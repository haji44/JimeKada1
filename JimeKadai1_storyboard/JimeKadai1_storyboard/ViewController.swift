//
//  ViewController.swift
//  JimeKadai1_storyboard
//
//  Created by kitano hajime on 2022/03/03.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var textField3: UITextField!
    @IBOutlet weak private var textField4: UITextField!
    @IBOutlet weak private var textField5: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        textField5.delegate = self
        textField1.becomeFirstResponder()
    }
    @IBAction private func didButtonTapped(_ sender: UIButton) {
        let result = String(calculate())
        resultLabel.text = result
        self.view.endEditing(true)
    }
    private func calculate () -> Int {
        let textFields = [textField1, textField2, textField3, textField4, textField5]
        let result = textFields.map({ Int($0?.text ?? "") ?? 0 }).reduce(0, { partialResult, inputValue in
            partialResult + inputValue
        })
        return result
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
