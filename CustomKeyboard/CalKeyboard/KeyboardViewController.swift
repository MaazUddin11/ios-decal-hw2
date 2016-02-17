//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var blueButton: UIButton!
    @IBOutlet var redButton: UIButton!
    @IBOutlet var greenButton: UIButton!
    @IBOutlet var purpleButton: UIButton!
    @IBOutlet var yellowButton: UIButton!
    @IBOutlet var orangeButton: UIButton!
    @IBOutlet var blackButton: UIButton!
    @IBOutlet var greyButton: UIButton!
    @IBOutlet var pinkButton: UIButton!
    
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        loadButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func makeReturn() {
        textDocumentProxy.insertText("\n")
    }
    
    func deleteCharacter() {
        textDocumentProxy.deleteBackward()
    }
    
    func printBlue() {
        textDocumentProxy.insertText("blue ")
    }
    
    func printRed() {
        textDocumentProxy.insertText("red ")
    }

    func printGreen() {
        textDocumentProxy.insertText("green ")
    }
    
    func printPurple() {
        textDocumentProxy.insertText("purple ")
    }
    
    func printYellow() {
        textDocumentProxy.insertText("yellow ")
    }
    
    func printOrange() {
        textDocumentProxy.insertText("orange ")
    }
    
    func printBlack() {
        textDocumentProxy.insertText("black ")
    }
    
    func printGrey() {
        textDocumentProxy.insertText("grey ")
    }
    
    func printPink() {
        textDocumentProxy.insertText("pink ")
    }
    
    func loadButtons() {
        returnButton.addTarget(self, action: "makeReturn", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deleteCharacter", forControlEvents: .TouchUpInside)
        blueButton.addTarget(self, action: "printBlue", forControlEvents: .TouchUpInside)
        redButton.addTarget(self, action: "printRed", forControlEvents: .TouchUpInside)
        greenButton.addTarget(self, action: "printGreen", forControlEvents: .TouchUpInside)
        purpleButton.addTarget(self, action: "printPurple", forControlEvents: .TouchUpInside)
        yellowButton.addTarget(self, action: "printYellow", forControlEvents: .TouchUpInside)
        orangeButton.addTarget(self, action: "printOrange", forControlEvents: .TouchUpInside)
        blackButton.addTarget(self, action: "printBlack", forControlEvents: .TouchUpInside)
        greyButton.addTarget(self, action: "printGrey", forControlEvents: .TouchUpInside)
        pinkButton.addTarget(self, action: "printPink", forControlEvents: .TouchUpInside)
        
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
    }


}
