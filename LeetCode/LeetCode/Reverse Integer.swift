//
//  Reverse Integer.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation

class Reverse {
    func reverse(_ intVal: Int) -> Int {
        var num = intVal
        var reverse = 0;
        
        while num != 0 {
            reverse = reverse*10 + num % 10
            num = num/10
        }
        
        if reverse > Int32.max || reverse < Int32.min  {  return 0  }
        return reverse
    }
}
