//
//  FizzBuzzFactory.swift
//  SwiftLesson
//
//  Created by 前川 博志 on 2015/02/15.
//  Copyright (c) 2015年 前川 博志. All rights reserved.
//

import Foundation


public class FizzBuzzFactory {
    
    public init()
    {
        //特に何もしない
    }
    
    public func convert (input: Array<Int>) -> Array<String>{
        return input.map( {$0 % 15 == 0 ? "FizzBuzz" : $0 % 3 == 0 ? "Fizz" : $0 % 5 == 0 ? "Buzz" : "\($0)"})
    }
}