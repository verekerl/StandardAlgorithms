//
//  main.swift
//  StandardAlgorithms
//
//  Created by Vereker, Luke (PRKB) on 05/11/2022.
//

import Foundation

print("Hello, Bob!")

let question = "How are you today? "
let message = "\(question)"

print(message)

func number() {
    let num = 1...10
    let number = num.randomElement()!
    print("Guess the number I'm thinking between 1 and 10: ")
    let user_choice = readLine()
    var user_number = Int(user_choice)
    if user_number == number {
        print("Well done")
    } else {
        print("Bye Bye")
    }
}

number()
