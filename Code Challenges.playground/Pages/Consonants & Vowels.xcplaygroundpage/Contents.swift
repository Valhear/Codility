/*
Consonants & Vowels
Write an algorithm which sorts a string into its consonants and vowels.
 
For any given input, our output should be a tuple with one member being a string
containing all the consonants and another member being a string containing all
the vowels.

   input: "Hello, World!"
   output: (consonants: "HllWrld", vowels: "eoo")

   input: "Reddit"
   output: (consonants: "Rddt", vowels: "ei")

   input: "sequoia"
   output: (consonants: "sq", vowels: "euoia")
 */


import UIKit

var input = "Hello, playground"

func output(input: String) -> (String, String) {
    let vowelValue = "aeiou"
    var consonants: String = ""
    var vowels: String = ""
    
    input.forEach { character in
        if vowelValue.contains(character) {
            vowels.append(character)
        } else {
            consonants.append(character)
        }
    }
    
    return (consonants, vowels)
}



output(input: input)

