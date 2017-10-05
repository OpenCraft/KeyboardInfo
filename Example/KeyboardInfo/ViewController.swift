//
//  ViewController.swift
//  KeyboardInfo
//
//  Created by luis.silva@ilegra.com on 10/05/2017.
//  Copyright (c) 2017 luis.silva@ilegra.com. All rights reserved.
//

import UIKit
import KeyboardInfo

class ViewController: UIViewController {

    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelAnimationCurve: UILabel!
    @IBOutlet weak var labelAnimationDuration: UILabel!
    @IBOutlet weak var textFieldShowKeyboard: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldShowKeyboard.delegate = self
    }

    private final func displayKeyboardInfo() {
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            self.labelHeight.text = "Keyboard Height: \(KeyboardInfo.shared.height ?? 0.0)"
            self.labelAnimationCurve.text = "Keyboard Animation Curve: \(KeyboardInfo.shared.animationCurve)"
            self.labelAnimationDuration.text = "Keyboard nimation Duration: \(KeyboardInfo.shared.animationDuration ?? 0.0)"
        })
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        displayKeyboardInfo()
    }
}
