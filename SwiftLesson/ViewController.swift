//
//  ViewController.swift
//  SwiftLesson
//
//  Created by 前川 博志 on 2015/02/08.
//  Copyright (c) 2015年 前川 博志. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    required init(coder aDecoder: NSCoder) {
        fizzBuzzCore = BasicFizzBuzz()
        
        super.init(coder: aDecoder)
    }

    @IBOutlet weak var fizzbuzzTextField: UITextField!
    @IBOutlet weak var fizzBuzzLabel: UILabel!
    
    
    @IBAction func FizzBuzzSelectorChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            self.fizzBuzzCore = BasicFizzBuzz()
        case 1:
            self.fizzBuzzCore = DelegateFizzbuzz(){"\($0)!!"}
        default:
            self.fizzBuzzCore = DelegateFizzbuzz({(_: Int) -> String in
                return "???"
            })
        }
    }
    
    var fizzBuzzCore : FizzbuzzFunction{
        willSet{
            
        }
        didSet{
            setFizzbuzzLabel(fizzbuzzTextField.text)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fizzbuzzTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        setFizzbuzzLabel(textField.text)
        
        return false
    }
    
    private func setFizzbuzzLabel(input: String){
        if let intValue = input.toInt()
        {
            fizzBuzzLabel.text = fizzBuzzCore.convert(intValue)
        }else{
            fizzBuzzLabel.text = "???"
        }
        
        fizzBuzzLabel.text = fizzBuzzCore.convert(input.toInt()!) ?? "???"
    }
}

