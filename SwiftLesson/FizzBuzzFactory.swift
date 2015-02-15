//
//  FizzBuzzFactory.swift
//  SwiftLesson
//
//  Created by 前川 博志 on 2015/02/15.
//  Copyright (c) 2015年 前川 博志. All rights reserved.
//

import Foundation

public protocol FizzbuzzFunction {
    func convert(input: Int) -> String
}

public class BasicFizzBuzz : FizzbuzzFunction{
    
    public init(){    }
    
    public func convert(input: Int) -> String{
        return input.fizzbuzz()
    }
}

public class DelegateFizzbuzz: FizzbuzzFunction{
    
    private let internalFunction: Int -> String
    
    public init(delegateFunction: Int -> String){
        internalFunction = delegateFunction
    }
    
    public func convert(input: Int) -> String{
        return internalFunction(input)
    }
}

extension Int{
    func fizzbuzz() -> String{
        switch self{
        case _ where self % 15 == 0:
            return "FizzBuzz"
        case _ where self % 3 == 0:
            return "Fizz"
        case _ where self % 5 == 0:
            return "Buzz"
        default:
            return "\(self)"
        }
    }
}

public class FizzBuzzFactory {
    
    private let fizzBuzzFunction: FizzbuzzFunction

    public init(inputFunction: FizzbuzzFunction)
    {
        fizzBuzzFunction = inputFunction
    }
    
    public func convert (input: Array<Int>) -> Array<String>{
        return input.map( {self.convert($0)})
    }
    
    private func convert(input: Int) -> String{
        return fizzBuzzFunction.convert(input)
    }
}