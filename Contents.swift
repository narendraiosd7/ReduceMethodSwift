import UIKit

let numbers = [1, 2, 3, 4, 5]

var sum = 0

for num in numbers {
    sum += num
}

print(sum)

let reducedCount = numbers.reduce(0, {partialResult, value in return partialResult + value })

print(reducedCount)

let sortFormReduceCount = numbers.reduce(0, +)

print(sortFormReduceCount)

let maxNumber = numbers.reduce(Int.min, {currentMaxVlue, value in return currentMaxVlue > value ? currentMaxVlue : value})

print(maxNumber)

let letters = "abracadabra"
let lettersCount = letters.reduce(into: [:]) { counts, letter in
    counts[letters, default: 0] += 1
}

print(lettersCount)
