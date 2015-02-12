//
//  SwiftLessonTests.swift
//  SwiftLessonTests
//
//  Created by 前川 博志 on 2015/02/08.
//  Copyright (c) 2015年 前川 博志. All rights reserved.
//

import UIKit
import XCTest

class FizzBuzzFactory {
    
    func convert (input: Array<Int>) -> Array<String>{
        return input.map({"\($0)"})
    }
    
}

class SwiftLessonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFizzBuzz() {
        let fizzbuzzFactory = FizzBuzzFactory()
        
        //これでいいらしい。いいの？？ -> http://qiita.com/shoma2da/items/efe1cb6e96d95959fcdd
        let someArray = (Array<Int>)(1...3)
        
        let converted = fizzbuzzFactory.convert(someArray)
        
        XCTAssertEqual(converted, ["1","2","3"], "Pass")
    }
}
