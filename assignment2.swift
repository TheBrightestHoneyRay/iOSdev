
//Easy tasks
//task 1
var fruits: [String] = ["orange", "apple", "tomato", "pineapple", "pear"]
print("\n", fruits[2])

//task 2
var favNums: Set<Int> = [818, 5, 8]
favNums.insert(42)
print("\n", favNums)

//task 3
var release: Dictionary<String, Int> = ["C++": 1985, "C#": 2000, "Swift": 2014]

var releaseSwift = release.filter({$0.key == "Swift"}).values
print("\n", releaseSwift)

//task 4
var colours: [String] = ["aubergine", "navy", "magenta", "cyan"]
colours[1] = "fuxia"
print("\n", colours)

//Medium tasks
//task 1
var num1: Set<Int> = [1, 2, 3, 4]
var num2: Set<Int> = [3, 4, 5, 6]

print("\n", num1.intersection(num2))

//task 2
var students: Dictionary<String, Int> = ["John Doe": 84, "Jane Doe": 92, "Adam Stevenson": 99]
print("\n", students)

students.updateValue(82, forKey: "Adam Stevenson")
print("\n", students)

//task 3
var fruits1: [String] = ["apple", "banana"]
var fruits2: [String] = ["cherry", "date"]

var total = fruits1 + fruits2
print("\n", total)


//Hard tasks
//task 1
var countries: Dictionary<String, Int> = ["DR Congo": 109276265, "Chad": 20299123, "Somalia": 19009151]
countries["Angola"] = 37885849
print("\n", countries)

//task 2
var pets1: Set<String> = ["cat", "dog"]
var pets2: Set<String> = ["dog", "mouse"]

var pets = pets1.union(pets2)
print("\n", pets)

pets.subtract(pets2)
print("\n", pets)

//task 3
var grades = ["John Doe": [3.1, 3.8, 3.2], "Jane Doe": [3.8, 3.9, 3.5], "Adam Stevenson": [3.1, 3.4, 3.7]]
print("\n", grades)

var janeGrade = Array(grades.filter({$0.key == "Jane Doe"}).values)
print("\n", janeGrade[0][1])
