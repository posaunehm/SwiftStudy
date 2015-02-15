//
//  ViewController.swift
//  SwiftLesson
//
//  Created by 前川 博志 on 2015/02/08.
//  Copyright (c) 2015年 前川 博志. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var fizzbuzzTextField: UITextField!
    @IBOutlet weak var fizzBuzzLabel: UILabel!
    
    let fizzBuzzFunction = BasicFizzBuzz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fizzbuzzTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
     
        var tempStr = textField.text as NSString
        tempStr = tempStr.stringByReplacingCharactersInRange(range, withString: string)
        
        
        if let intValue = (tempStr as String).toInt()
        {
            fizzBuzzLabel.text = fizzBuzzFunction.convert(intValue)
        }else{
            fizzBuzzLabel.text = "???"
        }
        
        return true
    }
    
    


}

