//
//  Stack.swift
//  Calculator
//
//  Created by Kevin Hartley on 5/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Stack {
    
    private var floatArray = [Float]()
    
    func pop() -> Float? {
        return floatArray.removeLast()
    }
    
    func push(float: Float) {
        floatArray.append(float)
    }
    
    func log() {
        print (floatArray)
    }
    
    func count() {
        floatArray.count
    }
}
