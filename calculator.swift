import Foundation

// Задані значення
var operation: String? = "+"
var operand1: Int? = 2
var operand2: Int? = 7

// Додавання
func add(_ a: Int, _ b: Int) -> Int {
  return a + b
}

// Віднімання
func subtract(_ a: Int, _ b: Int) -> Int {
  return a - b
}

// Множення
func multiply(_ a: Int, _ b: Int) -> Int {
  return a * b
}

// Ділення
func divide(_ a: Int, _ b: Int) -> Int? {
  guard b != 0 else {
    print("Помилка: ділення на нуль")
    return nil
  }
  return a / b
}

// Виконання
if let operation = operation, let operand1 = operand1, let operand2 = operand2 {
  switch operation {
  case "+":
    let result = add(operand1, operand2)
    print("Результат: \(result)")
  case "-":
    let result = subtract(operand1, operand2)
    print("Результат: \(result)")
  case "*":
    let result = multiply(operand1, operand2)
    print("Результат: \(result)")
  case "/":
    if let result = divide(operand1, operand2) {
      print("Результат: \(result)")
    }
  default:
    print("Непідтримувана операція")
  }
} else {
  print("Не всі значення задані")
}
