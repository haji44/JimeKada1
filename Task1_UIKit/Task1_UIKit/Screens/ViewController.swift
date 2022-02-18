//
//  ViewController.swift
//  Task1_UIKit
//
//  Created by kitano hajime on 2022/02/18.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: UI COMPONENTS
    private var textFiled1 = TaskTextField()
    private var textFiled2 = TaskTextField()
    private var textFiled3 = TaskTextField()
    private var textFiled4 = TaskTextField()
    private var textFiled5 = TaskTextField()
    private var calcrateButton = TaskButton(color: .systemGreen, title: "Calculate")
    private var resetButton = TaskButton(color: .systemPink, title: "Reset")
    private var resultLabel = TaskLabel()
    
    // MARK: PROPERTY
    private var resultValue: Int = 0
        
    // MARK: LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        configureVC()
    }

    // MARK: LOGIC
    @objc func calcurate() {
        let num1 = Int(textFiled1.text ?? "") ?? 0
        let num2 = Int(textFiled2.text ?? "") ?? 0
        let num3 = Int(textFiled3.text ?? "") ?? 0
        let num4 = Int(textFiled4.text ?? "") ?? 0
        let num5 = Int(textFiled5.text ?? "") ?? 0
        
        resultValue = num1 + num2 + num3 + num4 + num5
        
        resultLabel.text = "\(resultValue)"
    }
    
    @objc func reset() {
        resultValue = 0
        
        textFiled1.text = ""
        textFiled2.text = ""
        textFiled3.text = ""
        textFiled4.text = ""
        textFiled5.text = ""
        
        resultLabel.text = "\(resultValue)"
    }
    
    // MARK: CONFIGURE VIEW
    private func configureVC() {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground
        dissmissTapGesture()
        textFieldConfigure()
        calcurateButtonConfigure()
        resetButtonConfigure()
        labelConfigure()
    }
    
    func textFieldConfigure() {
        let textFileds: [TaskTextField] = [textFiled1, textFiled2, textFiled3, textFiled4, textFiled5]

        textFileds.forEach { textField in
            textField.delegate = self
            view.addSubview(textField)
        }
        
        let padding: CGFloat = 50
        let height: CGFloat = 50
        
        NSLayoutConstraint.activate([
            textFiled1.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            textFiled1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            textFiled1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            textFiled1.heightAnchor.constraint(equalToConstant: height),
            
            textFiled2.topAnchor.constraint(equalTo: textFiled1.bottomAnchor, constant: 20),
            textFiled2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            textFiled2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            textFiled2.heightAnchor.constraint(equalToConstant: height),
            
            textFiled3.topAnchor.constraint(equalTo: textFiled2.bottomAnchor, constant: 20),
            textFiled3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            textFiled3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            textFiled3.heightAnchor.constraint(equalToConstant: height),
            
            textFiled4.topAnchor.constraint(equalTo: textFiled3.bottomAnchor, constant: 20),
            textFiled4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            textFiled4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            textFiled4.heightAnchor.constraint(equalToConstant: height),
            
            textFiled5.topAnchor.constraint(equalTo: textFiled4.bottomAnchor, constant: 20),
            textFiled5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            textFiled5.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            textFiled5.heightAnchor.constraint(equalToConstant: height)
        ])
    }
    
    func calcurateButtonConfigure() {
        view.addSubview(calcrateButton)
        calcrateButton.addTarget(self, action: #selector(calcurate), for: .touchUpInside)

        NSLayoutConstraint.activate([
            calcrateButton.topAnchor.constraint(equalTo: textFiled5.bottomAnchor, constant: 20),
            calcrateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            calcrateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            calcrateButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func resetButtonConfigure() {
        view.addSubview(resetButton)
        resetButton.addTarget(self, action: #selector(reset), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            resetButton.topAnchor.constraint(equalTo: calcrateButton.bottomAnchor, constant: 20),
            resetButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            resetButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            resetButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func labelConfigure() {
        view.addSubview(resultLabel)
        resultLabel.text = "Reslut will be shown"
        
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            resultLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func dissmissTapGesture() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
}
