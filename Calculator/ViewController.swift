//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    let buttonZero = UIButton()
    let buttonOne = UIButton()
    let buttonTwo = UIButton()
    let buttonThree = UIButton()
    let buttonFour = UIButton()
    let buttonFive = UIButton()
    let buttonSix = UIButton()
    let buttonSeven = UIButton()
    let buttonEight = UIButton()
    let buttonNine = UIButton()
    let buttonSlash = UIButton()
    let buttonMultiply = UIButton()
    let buttonDash = UIButton()
    let buttonPlus = UIButton()
    let buttonEnter = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpbuttons()
    }
    
    func setUpbuttons() {

        label.backgroundColor = .blackColor()
        buttonZero.backgroundColor = .grayColor()
        buttonOne.backgroundColor = .grayColor()
        buttonTwo.backgroundColor = .grayColor()
        buttonThree.backgroundColor = .grayColor()
        buttonFour.backgroundColor = .grayColor()
        buttonFive.backgroundColor = .grayColor()
        buttonSix.backgroundColor = .grayColor()
        buttonSeven.backgroundColor = .grayColor()
        buttonEight.backgroundColor = .grayColor()
        buttonNine.backgroundColor = .grayColor()
        buttonSlash.backgroundColor = .orangeColor()
        buttonMultiply.backgroundColor = .orangeColor()
        buttonDash.backgroundColor = .orangeColor()
        buttonPlus.backgroundColor = .orangeColor()
        buttonEnter.backgroundColor = .greenColor()
        
        view.addSubview(label)
        view.addSubview(buttonZero)
        view.addSubview(buttonOne)
        view.addSubview(buttonTwo)
        view.addSubview(buttonThree)
        view.addSubview(buttonFour)
        view.addSubview(buttonFive)
        view.addSubview(buttonSix)
        view.addSubview(buttonSeven)
        view.addSubview(buttonEight)
        view.addSubview(buttonNine)
        view.addSubview(buttonSlash)
        view.addSubview(buttonMultiply)
        view.addSubview(buttonDash)
        view.addSubview(buttonPlus)
        view.addSubview(buttonEnter)
        
        displayLabel.textAlignment = .Right
        displayLabel.font = .systemFontOfSize(50)
        displayLabel.text = "0"
        displayLabel.textColor = .whiteColor()
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(displayLabel)
        
        
        buttonZero.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonOne.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonTwo.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonThree.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonFour.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonFive.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonSix.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonSeven.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonEight.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonNine.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonSlash.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonMultiply.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonPlus.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonDash.addTarget(self, action: #selector(addNumbers), forControlEvents: .TouchUpInside)
        buttonEnter.addTarget(self, action: #selector(enter), forControlEvents: .TouchUpInside)
        
        buttonZero.setTitle("0", forState: .Normal)
        buttonOne.setTitle("1", forState: .Normal)
        buttonTwo.setTitle("2", forState: .Normal)
        buttonThree.setTitle("3", forState: .Normal)
        buttonFour.setTitle("4", forState: .Normal)
        buttonFive.setTitle("5", forState: .Normal)
        buttonSix.setTitle("6", forState: .Normal)
        buttonSeven.setTitle("7", forState: .Normal)
        buttonEight.setTitle("8", forState: .Normal)
        buttonNine.setTitle("9", forState: .Normal)
        buttonSlash.setTitle("÷", forState: .Normal)
        buttonMultiply.setTitle("✕", forState: .Normal)
        buttonPlus.setTitle("+", forState: .Normal)
        buttonDash.setTitle("−", forState: .Normal)
        buttonEnter.setTitle("=", forState: .Normal)
        
        buttonZero.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonOne.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonTwo.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonThree.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonFour.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonFive.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonSix.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonSeven.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonEight.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonNine.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonSlash.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonMultiply.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonDash.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonPlus.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        buttonEnter.titleLabel?.font = UIFont(name: "Avenir-Roman", size: 40)
        
        buttonZero.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonOne.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonTwo.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonThree.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonFour.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonFive.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonSix.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonSeven.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonEight.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonNine.setTitleColor(.lightGrayColor(), forState: .Normal)
        buttonSlash.setTitleColor(.whiteColor(), forState: .Normal)
        buttonMultiply.setTitleColor(.whiteColor(), forState: .Normal)
        buttonDash.setTitleColor(.whiteColor(), forState: .Normal)
        buttonPlus.setTitleColor(.whiteColor(), forState: .Normal)
        buttonEnter.setTitleColor(.whiteColor(), forState: .Normal)
        
        
       
        setUpConstraints()
        
    }
    
    func setUpConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        buttonZero.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonThree.translatesAutoresizingMaskIntoConstraints = false
        buttonFour.translatesAutoresizingMaskIntoConstraints = false
        buttonFive.translatesAutoresizingMaskIntoConstraints = false
        buttonSix.translatesAutoresizingMaskIntoConstraints = false
        buttonSeven.translatesAutoresizingMaskIntoConstraints = false
        buttonEight.translatesAutoresizingMaskIntoConstraints = false
        buttonNine.translatesAutoresizingMaskIntoConstraints = false
        buttonSlash.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        buttonDash.translatesAutoresizingMaskIntoConstraints = false
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        buttonEnter.translatesAutoresizingMaskIntoConstraints = false
        
        let labelTopConstraint = NSLayoutConstraint(item: label, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0)
        let labelWidthConstraint = NSLayoutConstraint(item: label, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1.0, constant: 0)
        let labelHeightConstraint = NSLayoutConstraint(item: label, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.25, constant: 0)
        
        let buttonZeroHeight = NSLayoutConstraint(item: buttonZero, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonOneHeight = NSLayoutConstraint(item: buttonOne, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonTwoHeight = NSLayoutConstraint(item: buttonTwo, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonThreeHeight = NSLayoutConstraint(item: buttonThree, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonFourHeight = NSLayoutConstraint(item: buttonFour, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonFiveHeight = NSLayoutConstraint(item: buttonFive, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonSixHeight = NSLayoutConstraint(item: buttonSix, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonSevenHeight = NSLayoutConstraint(item: buttonSeven, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonEightHeight = NSLayoutConstraint(item: buttonEight, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonNineHeight = NSLayoutConstraint(item: buttonNine, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonSlashHeight = NSLayoutConstraint(item: buttonSlash, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonMultiplyHeight = NSLayoutConstraint(item: buttonMultiply, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonDashHeight = NSLayoutConstraint(item: buttonDash, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonEnterHeight = NSLayoutConstraint(item: buttonEnter, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        
        let buttonZeroWidth = NSLayoutConstraint(item: buttonZero, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.5, constant: 0)
        let buttonOneWidth = NSLayoutConstraint(item: buttonOne, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonTwoWidth = NSLayoutConstraint(item: buttonTwo, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonThreeWidth = NSLayoutConstraint(item: buttonThree, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonFourWidth = NSLayoutConstraint(item: buttonFour, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonFiveWidth = NSLayoutConstraint(item: buttonFive, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonSixWidth = NSLayoutConstraint(item: buttonSix, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonSevenWidth = NSLayoutConstraint(item: buttonSeven, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonEightWidth = NSLayoutConstraint(item: buttonEight, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonNineWidth = NSLayoutConstraint(item: buttonNine, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonSlashWidth = NSLayoutConstraint(item: buttonSlash, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonMultiplyWidth = NSLayoutConstraint(item: buttonMultiply, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonDashWidth = NSLayoutConstraint(item: buttonDash, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonEnterWidth = NSLayoutConstraint(item: buttonEnter, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)

        
        view.addConstraints([buttonZeroHeight, buttonOneHeight, buttonTwoHeight, buttonThreeHeight, buttonFourHeight, buttonFiveHeight, buttonSixHeight, buttonSevenHeight, buttonEightHeight, buttonNineHeight, buttonSlashHeight, buttonMultiplyHeight, buttonDashHeight, buttonEnterHeight, buttonZeroWidth, buttonOneWidth, buttonTwoWidth, buttonThreeWidth, buttonFourWidth, buttonFiveWidth, buttonSixWidth, buttonSevenWidth, buttonEightWidth, buttonNineWidth, buttonSlashWidth, buttonMultiplyWidth, buttonDashWidth, buttonEnterWidth])
        
        let buttonSevenToView = NSLayoutConstraint(item: buttonSeven, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonEightToButtonSeven = NSLayoutConstraint(item: buttonEight, attribute: .Leading, relatedBy: .Equal, toItem: buttonSeven, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonNineToButtonEight = NSLayoutConstraint(item: buttonNine, attribute: .Leading, relatedBy: .Equal, toItem: buttonEight, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonSlashToButtonNine = NSLayoutConstraint(item: buttonSlash, attribute: .Leading, relatedBy: .Equal, toItem: buttonNine, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonSlashToView = NSLayoutConstraint(item: buttonSlash, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let buttonSevenToLabel = NSLayoutConstraint(item: buttonSeven, attribute: .Top, relatedBy: .Equal, toItem: label, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonEightToLabel = NSLayoutConstraint(item: buttonEight, attribute: .Top, relatedBy: .Equal, toItem: label, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonNineToLabel = NSLayoutConstraint(item: buttonNine, attribute: .Top, relatedBy: .Equal, toItem: label, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonSlashToLabel = NSLayoutConstraint(item: buttonSlash, attribute: .Top, relatedBy: .Equal, toItem: label, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([labelHeightConstraint, buttonSevenToView, labelTopConstraint, labelWidthConstraint, buttonSevenToLabel, buttonEightToButtonSeven, buttonNineToButtonEight, buttonSlashToButtonNine, buttonSlashToView, buttonEightToLabel, buttonNineToLabel, buttonSlashToLabel])
        
        let buttonFourToView = NSLayoutConstraint(item: buttonFour, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)

        let buttonFiveToButtonFour = NSLayoutConstraint(item: buttonFive, attribute: .Leading, relatedBy: .Equal, toItem: buttonFour, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonSixToButtonFive = NSLayoutConstraint(item: buttonSix, attribute: .Leading, relatedBy: .Equal, toItem: buttonFive, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonMultiplyToButtonSix = NSLayoutConstraint(item: buttonMultiply, attribute: .Leading, relatedBy: .Equal, toItem: buttonSix, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonMultiplyToView = NSLayoutConstraint(item: buttonMultiply, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let buttonFourToSeven = NSLayoutConstraint(item: buttonFour, attribute: .Top, relatedBy: .Equal, toItem: buttonSeven, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonFiveToEight = NSLayoutConstraint(item: buttonFive, attribute: .Top, relatedBy: .Equal, toItem: buttonEight, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonSixToNine = NSLayoutConstraint(item: buttonSix, attribute: .Top, relatedBy: .Equal, toItem: buttonNine, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonMultiplyToButtonSlash = NSLayoutConstraint(item: buttonMultiply, attribute: .Top, relatedBy: .Equal, toItem: buttonSlash, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([buttonFourToView, buttonFiveToButtonFour, buttonSixToButtonFive, buttonMultiplyToButtonSix, buttonMultiplyToView, buttonFourToSeven, buttonFiveToEight, buttonSixToNine, buttonMultiplyToButtonSlash])

        let buttonOneToView = NSLayoutConstraint(item: buttonOne, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let buttonTwoToButtonOne = NSLayoutConstraint(item: buttonTwo, attribute: .Leading, relatedBy: .Equal, toItem: buttonOne, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonThreeToButtonTwo = NSLayoutConstraint(item: buttonThree, attribute: .Leading, relatedBy: .Equal, toItem: buttonTwo, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonFourToButtonThree = NSLayoutConstraint(item: buttonDash, attribute: .Leading, relatedBy: .Equal, toItem: buttonThree, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonDashToView = NSLayoutConstraint(item: buttonDash, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let buttonOneToFour = NSLayoutConstraint(item: buttonOne, attribute: .Top, relatedBy: .Equal, toItem: buttonFour, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonTwoToFive = NSLayoutConstraint(item: buttonTwo, attribute: .Top, relatedBy: .Equal, toItem: buttonFive, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonThreeToSix = NSLayoutConstraint(item: buttonThree, attribute: .Top, relatedBy: .Equal, toItem: buttonSix, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonDashToButtonMultiply = NSLayoutConstraint(item: buttonDash, attribute: .Top, relatedBy: .Equal, toItem: buttonMultiply, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([buttonOneToView, buttonTwoToButtonOne, buttonThreeToButtonTwo, buttonFourToButtonThree, buttonDashToView, buttonOneToFour, buttonTwoToFive, buttonThreeToSix, buttonDashToButtonMultiply])

        let buttonZeroToView = NSLayoutConstraint(item: buttonZero, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let buttonEnterToButtonZero = NSLayoutConstraint(item: buttonEnter, attribute: .Leading, relatedBy: .Equal, toItem: buttonZero, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonPlusToButtonEnter = NSLayoutConstraint(item: buttonPlus, attribute: .Leading, relatedBy: .Equal, toItem: buttonEnter, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let buttonPlusToView = NSLayoutConstraint(item: buttonPlus, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let buttonZeroToButtonOne = NSLayoutConstraint(item: buttonZero, attribute: .Top, relatedBy: .Equal, toItem: buttonOne, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonEnterToButtonThree = NSLayoutConstraint(item: buttonEnter, attribute: .Top, relatedBy: .Equal, toItem: buttonThree, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonPlusToButtonDash = NSLayoutConstraint(item: buttonPlus, attribute: .Top, relatedBy: .Equal, toItem: buttonDash, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let buttonZeroToBottom = NSLayoutConstraint(item: buttonZero, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonEnterToBottom = NSLayoutConstraint(item: buttonEnter, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonPlusToBottom = NSLayoutConstraint(item: buttonPlus, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([buttonZeroToView, buttonEnterToButtonZero, buttonPlusToButtonEnter, buttonPlusToView, buttonZeroToButtonOne, buttonEnterToButtonThree, buttonPlusToButtonDash, buttonZeroToBottom, buttonEnterToBottom, buttonPlusToBottom])
        
        }
    
    var isTyping: Bool = false
    
    var stack = Stack()
    
    var displayLabel = UILabel()
    var displayValue: Float {
        get {
            let text = displayLabel.text ?? "0"
            return (text as NSString).floatValue
        } set {
            displayLabel.text = "\(newValue)"
            isTyping = false
        }
    }
    
    func addNumbers(button: UIButton) {
        guard let number = button.currentTitle else {
            return
        }
        if isTyping {
            let displayText = displayLabel.text ?? ""
            displayLabel.text = displayText + number
        } else {
            displayLabel.text = number
            isTyping = true
        }
    }
    
    func enter() {
        isTyping = false
        stack.push(displayValue)
        stack.log()
    }
    
    func operate(button: UIButton) {
        
        guard let operation = button.currentTitle else {
            return
        }
        if isTyping == true {
            enter()
        }
        
        if stack.count() >= 2 {
            let float1 = stack.pop()!
            let float2 = stack.pop()!
            
            switch operation {
            case "÷":
                displayValue = float2 / float1
            case "+":
                displayValue = float2 + float1
            case "−":
                displayValue = float2 - float1
            case "✕":
                displayValue = float2 * float1
            default:
                stack.push(float1)
                stack.push(float2)
                
            }
            enter()
        }
    }
}


//buttonZero
//buttonOne
//buttonTwo
//buttonThree
//buttonFour
//buttonFive
//buttonSix
//buttonSeven
//buttonEight
//buttonNine
//buttonSlash
//buttonMultiply
//buttonDash
//buttonPlus
//buttonEnter


//buttonZero: UIButton, buttonOne: UIButton, buttonTwo: UIButton, buttonThree: UIButton, buttonFour: UIButton, buttonFive: UIButton, buttonSix: UIButton, buttonSeven: UIButton, buttonEight: UIButton, buttonNine: UIButton, buttonSlash: UIButton, buttonMultiply: UIButton, buttonDash: UIButton, buttonPlus: UIButton, buttonEnter: UIButton


//case buttonZero
//case buttonOne
//case buttonTwo
//case buttonThree
//case buttonFour
//case buttonFive
//case buttonSix
//case buttonSeven
//case buttonEight
//case buttonNine
//case buttonSlash
//case buttonMultiply
//case buttonDash
//case buttonPlus
//case buttonEnter
