/*
Character validation
Write a function that takes a String argument and returns a Bool if it contains "(" and ")" characters

   input: "(Hello, World!)"
   output: true

   input: "(Hello, World!"
   output: false
 
   input: "Hello, World!)"
   output: false
 
 */

import Foundation

var str = "Hello, playground"

func validate(input: String) -> Bool {
    let allowedCharacters = "()"
    var matchingCharacters = ""
    
    input.forEach { (character) in
        if allowedCharacters.contains(character) {
            matchingCharacters.append(character)
        }
    }
    
    if matchingCharacters.contains(allowedCharacters) {
        return true
    }
    
    return false
}

validate(input: "(Hello, World!)")
validate(input: "(Hello, World!")
validate(input: "Hello, World!)")
