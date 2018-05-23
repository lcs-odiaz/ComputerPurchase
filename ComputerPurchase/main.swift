//
//  main.swift
//  ComputerPurchase
//

import Foundation

// INPUT
// Global variable, tracks how many computers we are going to collect specs for
var countOfExpectedSpecsThatWillBeProvided = 3

while 1 == 1{
    print("How many specs will be provided?")
    
    guard let givenInput = readLine() else{
        continue
    }
    
    guard let givenInteger = Int(givenInput) else{
        continue
    }
    
    if givenInteger < 1 || givenInteger > 10{
        continue
    }
    
    countOfExpectedSpecsThatWillBeProvided = givenInteger
    break
}

// Write a loop to actually determine how many computer specs the user will provide
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the list of computer specs here
for counter in 1...countOfExpectedSpecsThatWillBeProvided {
    
    // Ask user for the specs for a given computer
    print("Spec \(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    // What was provided?
//    print("The given input was: \(givenInput)")
    
    // NOTE:
    //
    // Some example code that may be useful
//    let exampleInput = "SuperFastComputer 2 50 75"
//    print("The example input is: \(exampleInput)")
    let givenInputPieces = givenInput.split(separator: " ")
    let computerName = givenInputPieces[0]
    let computerRAM = Int(givenInputPieces[1])
    let computerCPU = Int(givenInputPieces[2])
    let computerDiskSpace = Int(givenInputPieces[3])
//    print("Computer name is: \(computerName)")
//    print("Computer RAM amount is: \(computerRAM)")
//    print("Computer CPU speed is: \(computerCPU)")
//    print("Computer disk space is: \(computerDiskSpace)")
    
    // Implement the rest of your logic here...
    let totalAddittionOfParts = 2 * computerRAM + 3 * computerCPU + computerDiskSpace
}
