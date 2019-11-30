/*
Fibonacci
 
Return fibonacci series from a given input

   input: 3
   output: [1,1,2,3]
 
 */

import Foundation

func fibonacci(input: Int) -> [Int] {
    var fibonacci = [1, 1]
    
    for i in 1...input {
        fibonacci.append(fibonacci[i] + fibonacci[i-1])
    }
    
    return fibonacci
}

fibonacci(input: 7)

