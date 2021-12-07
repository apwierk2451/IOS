//
//  main.swift
//  Day03
//
//  Created by 이은찬 on 2021/11/13.
//

import Foundation

// 비교연산자

print(1 == 1)
print(2 != 1)
print(2 > 1)
print(2 < 1)
print(2 >= 1)
print(2 <= 1)

let name = " world"
if name == "World" {
    print("Helllo world")
} else {
    print("Nothing")
}

print((1, "zebra") < (2, "apple"))
// 앞의 문자를 먼저 비교한다.

print((3, "apple") < (3, "bird"))
// 앞의 문자가 같을 경우 뒤에 문자를 비교하는데, 첫 글자가 a < b 이므로 true
print((4, "dog") == (4, "dog"))

//print(("blue", false) < ("pulple", true)) false와 true는 비교대상이 아니기떄문에 에러 발생


// 일반 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeight: Int

if hasHeader{
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}

print(rowHeight)


// 삼항 조건 연산자
let contentHeight1 = 40
let hasHeader1 = true
let rowHeight1 = contentHeight1 + (hasHeader1 ? 50 : 20)
print(rowHeight1)

// Nil 병합 연산자
let defaultColorName = "red"
var userDefinedColorName: String? // nil값 적용됨

var colorNameToUse = userDefinedColorName ?? defaultColorName // userDCN이 Nil 이면 defaultCN을 선언한다.
print(colorNameToUse)

userDefinedColorName = "green"

colorNameToUse = userDefinedColorName ?? defaultColorName
print(userDefinedColorName)


// 범위연산자
//1...10 1부터 10까지
//1..<10 1부터 9까지
for i in 1...10 {
    print(i)
}

var sum: Int = 0
for i in 1...1000 {
    sum += i
}

print("합계는 \(sum)이다.")


// 구구단 2단

for i in 1...9 {
    print("2 X \(i) = \(2*i)")
}
    
let names = ["Anna", "Alex", "Brian", "Jack"]
print(names.count)

for i in 0..<names.count {
    print("Person \(i+1) is called \(names[i])")
}

var cnt = 0
for i in names {
    cnt += 1
    print("Person \(cnt) is called \(i)")
}


// 논리 연산자
// 논리 부정 연산자

let allwedEntry = false

if !allwedEntry {
    print("Access Denied")
}

// 논리 곱 연산자 (AND) &&
let enteredDoorCide = true
let passRetinaScan = false

if enteredDoorCide && passRetinaScan {
    print("Welcome!")
} else {
    print("Access Denied")
}

// 논리 곱 연산자 (OR) ||
if enteredDoorCide || passRetinaScan {
    print("Welcome!")
} else {
    print("Access Denied")
}

// Optional
// nil값을 포함할 수 있는 변수 선언

let constantNum = 100
// constantNum = Nil //Error

let optionalconstant: Int! = nil
let optionalconstant1: Int? = nil

var constantNum1: Int! = 100
var constantNum2: Int? = 100
print(constantNum1 + 1)
print(constantNum2! + 1)

//Optional Unwrapping
var myName: String?

if let name: String = myName{
    print("\(name) : myName")
}else{
    print("myName is nil")
}

// Force Unwrapping
myName = "kenny"
print(myName!)
