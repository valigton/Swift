//Basic Operators

//Assignment Operator
let b = 10
var a = 5
a = b
// a is now equal to 10

1 + 2       // equals 3
5 - 3       // equals 2
2 * 3       // equals 6
10.0 / 2.5  // equals 4.0

//Unary Minus Operator
let three = 3
let minusThree = -three 
// minusThree equals -3
let plusThree = -minusThree   
// plusThree equals 3, or "minus minus three"

//Compound Assignment Operators
var a = 1
a += 2
// a is now equal to 3

//Comparison Operators
1 == 1// true because 1 is equal to 1
2 != 1// true because 2 is not equal to 1
2 > 1// true because 2 is greater than 1
1 < 2// true because 1 is less than 2
1 >= 1// true because 1 is greater than or equal to 1
2 <= 1// false because 2 is not less than or equal to

//Tuple comparison
(1, "zebra") < (2, "apple")// true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")// true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")// true because 4 is equal to 4, and "dog" is equal to "dog"

("blue", -1) < ("purple", 1)// OK, evaluates to true
("blue", false) < ("purple", true)// Error because < can't compare Boolean values

//Nil-Coalescing Operator
a != nil ? a! : b

//Range Operators
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25

//Halp-Open Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack

//One-Sided Ranges
for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian