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
        return input.map( {self.convert($0)})
    }
    
    private func convert(input: Int) -> String{
        switch input{
        case _ where input % 15 == 0:
            return "FizzBuzz"
        case _ where input % 3 == 0:
            return "Fizz"
        case _ where input % 5 == 0:
            return "Buzz"
        default:
            return "\(input)"
        }
    }
}