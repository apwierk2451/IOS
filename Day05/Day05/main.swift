//
//  main.swift
//  Day05
//
//  Created by 이은찬 on 2021/11/20.
//

import Foundation

// Collection
// - Dictionary
// : Key 와 Value 로 구성

var scoreDictionary: Dictionary<String, Int> = [String: Int]()

var scoreDictionary1: [String: Int] = [:]

// 데이터 추가
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80

print(scoreDictionary)
print(scoreDictionary["관우"]!)

let initializedDictionary: [String: String] = ["name": "james", "gender": "male"]
print(initializedDictionary)

// Set
// : 중복 데이터가 입력되지 않음
var oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumber: Set = [2,3,5,7]

print(oddDigits.sorted())

// 합집합
print(oddDigits.union(evenDigits).sorted())

// 교집합
print(oddDigits.intersection(evenDigits).sorted())

// 차집합
print(oddDigits.subtracting(singleDigitPrimeNumber).sorted())

// 여집합
print(oddDigits.symmetricDifference(singleDigitPrimeNumber).sorted())

// Set의 멤버십과 동등 비교
let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "sheep", "dog", "cat"]
let cityAnimals: Set = ["duck", "rabbit"]

// houseAnimals가 farm에 속해있냐
print(houseAnimals.isSubset(of: farmAnimals))
// farmAnimalsdl house의 모집합이냐
print(farmAnimals.isSuperset(of: houseAnimals))
// farm과 city는 완전히 분리된 집합이냐
print(farmAnimals.isDisjoint(with: cityAnimals))




// Switch 조건문
let personAge = 14

if personAge < 1 {
    print("baby")
} else if personAge < 3 {
    print("toddler")
} else if personAge < 5 {
    print("preschooler")
} else if personAge < 13 {
    print("gradeschooler")
} else if personAge < 18 {
    print("teen")
} else {
    print("adult")
}

switch personAge {
case 0..<1: print("baby")
case 1..<3: print("toddler")
case 3..<5: print("preschooler")
case 5..<13: print("gradeschooler")
case 13..<18: print("teen")
default: print("adult")
}

let someInteger = 50

switch someInteger {
case 0:
    print ("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}
print(Int.max)

let anothe3rCharacter: Character = "a"

switch anothe3rCharacter {
case "a","A":
    print("The letter A")
default:
    print("Not the letter A")
}


// 점수 등급 표시 A ~ F학점
    let name = "유비"
    let kor = 91
    let eng = 97
    let math = 95

//이름: __
//국어: __
//영어: __
//수학: __
//총점: __
//평균: __
//평균에 대한 학점: __

//1) if 문으로 만들기
//2) switch 문으로만들기

func ifScore(name: String, kor: Int, eng: Int, math: Int){
    print(name)
    print("국어")
    if kor >= 90 {
        print("A")
    } else if kor >= 80 {
        print("B")
    } else if kor >= 70 {
        print("C")
    } else if kor >= 60 {
        print("D")
    } else {
        print("F")
    }
    print("영어")
    if eng >= 90 {
        print("A")
    } else if eng >= 80 {
        print("B")
    } else if eng >= 70 {
        print("C")
    } else if eng >= 60 {
        print("D")
    } else {
        print("F")
    }
    print("수학")
    if math >= 90 {
        print("A")
    } else if math >= 80 {
        print("B")
    } else if math >= 70 {
        print("C")
    } else if math >= 60 {
        print("D")
    } else {
        print("F")
    }
    print("총점")
    let total = kor+eng+math
    print(total)
    print("평균")
    let average = total / 3
    print(average)
    print("총점에 대한 학점")
    
    if average >= 90 {
        print("A")
    } else if average >= 80 {
        print("B")
    } else if average >= 70 {
        print("C")
    } else if average >= 60 {
        print("D")
    } else {
        print("F")
    }
}

func switchScore(name: String, kor: Int, eng: Int, math: Int) {
    print(name)
    print("국어")
    switch kor {
    case 90...100:
        print("A")
    case 80...90:
        print("B")
    case 70...80:
        print("C")
    case 60...70:
        print("D")
    default:
        print("F")
    }
    print("영어")
    switch eng {
    case 90...100:
        print("A")
    case 80...90:
        print("B")
    case 70...80:
        print("C")
    case 60...70:
        print("D")
    default:
        print("F")
    }
    print("수학")
    switch math {
    case 90...100:
        print("A")
    case 80...90:
        print("B")
    case 70...80:
        print("C")
    case 60...70:
        print("D")
    default:
        print("F")
    }
    print("총점")
    let total = kor+eng+math
    print(total)
    print("평균")
    let average = total / 3
    print(average)
    print("총점에 대한 학점")
    
    switch average {
    case 90...100:
        print("A")
    case 80...90:
        print("B")
    case 70...80:
        print("C")
    case 60...70:
        print("D")
    default:
        print("F")
    }
}

ifScore(name: name, kor: kor, eng: eng, math: math)
switchScore(name: name, kor: kor, eng: eng, math: math)

var grade: String
let avg: Double = Double((kor + eng + math) / 3)
// 삼항연산자
grade = avg >= 90 ? "A" :
avg >= 90 ? "B" :
avg >= 90 ? "C" :
avg >= 90 ? "D" : "F"

// 배열과 반복문
var score = [90,80,70,60,0]
var level = ["A","B","C","D","F"]
for i in 0..<score.count {
    if avg >= Double(score[i]) {
        grade = level[i]
        print(grade)
        break
    }
}


// -----------
let names = ["Anna", "Alex", "Brian", "Jack"]

print(type(of: names))

for name in names {
    print("Hello, \(name)")
}

for (index, text) in names.enumerated() {
    print("The name at index \(index) is \(text)")
}
        

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for (animalName, legCount) in numberOfLegs {
    print("\(animalName) have \(legCount) legs")
}

let seq1 = 1...5
for index in seq1 {
    print("\(index) times 5 is \(index * 5)")
}

//let seq2 = 5...1
let seq2 = seq1.reversed()
for index in seq2 {
    print("\(index) times 5 is \(index * 5)")
}

let minutes = 60
let minuteInterval = 5

// to 는 < 60 , through 는 <= 60
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: minuteInterval) {
    print(tickMark)
}


let strings = ["First String", "Second String", "Third String", "Fourth String"]

// F 로 시작하는 문자열을 출력하라
for string in strings {
    if string.starts(with: "F"){
        print(string)
    }
}

// T 로 시작하는 문자열을 만나면 출력을 그만하라
for string in strings {
    if string.starts(with: "T") {
        break
    }
    print(string)
}

print("---------------")
// F 로 시작하는 문자를 제외하고 출력하라
for string in strings {
    if string.starts(with: "F"){
        continue
    }
    print(string)
        
}

// while
var startIndex = 0
var endIndex = 100
var sum = 0

while startIndex <= endIndex {
    sum += startIndex
    startIndex += 1
}

print("while : \(sum)")
