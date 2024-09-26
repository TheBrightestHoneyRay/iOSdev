import UIKit


//Problem 1
for num in 1...100{
    if num % 3 == 0 && num % 5 == 0{
        print("FizzBuzz")
    }
    else if num % 3 == 0{
        print("Fizz")
    }
    else if num % 5 == 0{
        print("Buzz")
    }
    else{
        print(num)
    }
}

//Problem 2
func isPrime(_number: Int) -> Bool{
    if _number == 1{
        return false
    }
    
    else if _number == 2 || _number == 3{
        return true
    }
    
    for num in 2...Int(_number/2){
        if _number % num == 0{
            return false
        }
    }
    
    return true
}

for num in 1...100{
    if isPrime(_number: num){
        print(num)
    }
}

//Problem 3
print("Type in a tempreture value")
let temp: Double = 40
//let temp = readLine()

print("Type in a unit of measurement")
let tempUnit = "C"
//let tempUnit = readLine()

func toKelvin(temp: Double, tempUnit: String) -> Double{
    if tempUnit == "C"{
        return temp + 273.15
    }
    else if tempUnit == "F"{
        return (temp - 32) * 5/9 + 273.15
    }
    
    return temp
}

func toCelcius(temp: Double, tempUnit: String) -> Double{
    if tempUnit == "K"{
        return temp - 273.15
    }
    else if tempUnit == "F"{
        return (temp - 32) * 5/9
    }
    
    return temp
}

func toFarenheit(temp: Double, tempUnit: String) -> Double{
    if tempUnit == "K"{
        return (temp - 273.15) * 9/5 + 32
    }
    else if tempUnit == "C"{
        return temp * 9/5 + 32
    }
    
    return temp
}

var celcius: Double
var farenheit: Double
var kelvin: Double

if tempUnit == "K"{
    celcius = toCelcius(temp: temp, tempUnit: tempUnit)
    farenheit = toFarenheit(temp: temp, tempUnit: tempUnit)
    print("Celcius: ", celcius, "Farenhite: ", farenheit)
}
else if tempUnit == "F"{
    celcius = toCelcius(temp: temp, tempUnit: tempUnit)
    kelvin = toKelvin(temp: temp, tempUnit: tempUnit)
    print("Celcius: ", celcius, "Kelvin: ", kelvin)
}
else if tempUnit == "C"{
    kelvin = toKelvin(temp: temp, tempUnit: tempUnit)
    farenheit = toFarenheit(temp: temp, tempUnit: tempUnit)
    print("Farenhiet: ", farenheit, "Kelvin: ", kelvin)
}

//Problem 4

//Problem 5
print("Enter a sentence")
let sentence = "Hello bye, greetings bye hello bye greetings greeting"

var cntWord: Dictionary<String, Int>

for word in sentence.split(separator: " "){
    
}

//Problem 6
