var variavel
let constante

var welcomeMessage: String
welcomeMessage = "Hello World"

var red, green, blue: Double

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

//Isso é um comentario

let cat = "🐱"; 
print(cat)
// Prints "🐱"

let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8

//type aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0

//Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible."

//Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."

//Tuples
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

//Error Handling
  func canThrowAnError() throws {
    // this function may or may not throw an error
  }
  do {
    try canThrowAnError()
    // no error was thrown
  } catch {
      // an error was thrown
  }

  func makeASandwich() throws {
      // ...
  }
  do {
      try makeASandwich()
      eatASandwich()
  } catch SandwichError.outOfCleanDishes {
      washDishes()
  } catch SandwichError.missingIngredients(let ingredients) {
      buyGroceries(ingredients)
  }