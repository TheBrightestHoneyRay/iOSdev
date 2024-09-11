//
//  fin_assignment1.swift
//  
//
//  Created by Balnur on 11.09.2024.
//

import Foundation

//step 1
var firstName = "Balnur"
var lastName = "Bektasova"
var age = 24
let birthYear = 2000
var isStudent = true
var height : Double = 164.8

let currentYear = 2024

//bonus 1
age = currentYear - birthYear


//step 2
var hobby = "reading"
var numberOfHobbies = 6
var favoriteNumber = 818
var isHobbyCreative = true


//step 3
var lifeStory = "My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I am currently a student. I enjoy \(hobby), which is a creative hobby. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber)."


//step 4 + bonus 2
let grinningFaceWithSweat = "\u{1F605}"
var futureGoals = "\n I plan to have a stable work life balance. \(grinningFaceWithSweat)"

lifeStory = lifeStory + futureGoals

print(lifeStory)
