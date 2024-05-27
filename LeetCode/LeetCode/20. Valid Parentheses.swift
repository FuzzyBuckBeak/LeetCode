//
//  20. Valid Parentheses.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 11/29/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Note that an empty string is also considered valid.
*************************************************************************************************************************************************************/

import Foundation

class ValidParentheses {
    class Stack {
        var stack: [Character] = []
        var top: Int = -1
        
        func push(value: Character) {
            top += 1
            stack.append(value)
        }
        
        func pop() -> Character? {
            if (top == -1) { return nil }
            let charecter = stack.remove(at: top)
            top -= 1
            return charecter
        }
    }
    func isValid(_ s: String) -> Bool {
        let stack = Stack()
        var isValid: Bool = false
        for c in s {
            switch (c) {
            case "{",
                 "[",
                 "(": stack.push(value: c)
            case "}",
                 "]",
                 ")" : if (stack.top != -1 &&
                        (c == "}" && stack.pop() == "{" ||
                        c == "]" && stack.pop() == "[" ||
                        c == ")" && stack.pop() == "(")) {
                        isValid = true
                 } else {
                    isValid = false
                }
            default : isValid = true
            }
        }
        
        return isValid
    }
}



//using Array:


func isValid(_ s: String) -> Bool {
   var stack: [Character] = []
   for char in s {
       if char == "(" || char == "[" || char == "{" {
           stack.append(char)
       } else {
               switch char {
               case ")": let value = stack.last
                   if value == "(" { stack.removeLast() } else { stack.append(char)}
                   
                   
               case "]": let value = stack.last
                   if value == "[" { stack.removeLast() } else { stack.append(char)}
                   
               case "}": let value = stack.last
                   if value == "{" { stack.removeLast() } else { stack.append(char)}
                   
                   
               default: break
               }
           
       }
   }
   return stack.count == 0
}
