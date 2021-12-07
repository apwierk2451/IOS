//
//  main.swift
//  Day06
//
//  Created by 이은찬 on 2021/11/21.
//
//
//import Foundation
//
//// - method 1
//// 1 부터 100 까지 짝수 들의 합
//var startIndex = 1
//var sum = 0
//while startIndex <= 100 {
//    if startIndex % 2 == 0 {
//        sum += startIndex
//    }
//    startIndex += 1
//}
//print(sum)
//
//// - method 2
//startIndex = 2
//sum = 0
//while startIndex <= 100 {
//    sum += startIndex
//    startIndex += 2
//}
//print(sum)
//
//// Exercise
//// 더하기 할 숫자들의 갯수를 입력받아 정한 뒤 해당 갯수만큼의 숫자들을 입력받아 합계 구하기
//var sumNum = 0

//print("몇 개의 숫자를 더할까요?", terminator: "")
//var inpNum = Int(readLine()!)
//if let inpNum1: Int = inpNum {
//    print("\(inpNum1)개의 숫자를 입력하세요")
//
//    for _ in 1...inpNum1{
//        let ii = Int(readLine()!)
//        sumNum += ii!
//    }
//    print("입력한 숫자의 합은 \(sumNum)입니다.")
//} else {
//    print("Input value is wrong!")
//}

//
// Exercise
/*
 Enter aninteger(0~9) : 12345678
 Sum of digits = 36
 */
//
//var repNum = 0 // 몫
//var remainder = 0 // 나머지
//var sumNo = 0 // 누적 합계
//
//print("Enter an integer(0~9) : ", terminator: "")
//var inpNum2 = Int(readLine()!)
//if var inpNum3: Int = inpNum2 {
//    while inpNum3 != 0 {
//        remainder = inpNum3 % 10
//        sumNo += remainder
//        inpNum3 /= 10
//    }
//    print("Sum of digits = \(sumNo)")
//} else {
//    print("Input value is wrong!")
//}
//

// 함수 ----------
//
//func integerSum(a: Int, b: Int) {
//    print(a + b)
//}
//
//
//integerSum(a:3, b:5)
//
//func greet(person: String) -> String {
//    let greeting = "Hello, \(person)"
//    return greeting
//}
//
//print(greet(person: "eunchan"))
//
//func sayHelloWorld() -> String {
//    return "Hello, World!"
//}
//print(sayHelloWorld())
//
//// 복수의 파라미터를 사용하는 함수
//func greet1(person: String, alreadyGreeted: Bool) -> String{
//    if alreadyGreeted {
//        return"\(person) bye"
//    }else {
//        return "\(person) hello"
//    }
//}
//
//print(greet1(person: "Tim", alreadyGreeted: true))
//print(greet1(person: "Tim", alreadyGreeted: false))
//
//// _로 사용하기
//
//func buildAddress(_ name: String, address: String, city: String, postalCode: String, country: String? = "USA") -> String {
//    return """
//    \(name)
//    \(address)
//    \(city)
//    \(postalCode)
//    \(country ?? "")
//    """
//}
//
//print(buildAddress("Jogn Doe", address: "5 Convigton Square", city: "Birmingham", postalCode: "0123"))
//print(buildAddress("Jogn Doe", address: "5 Convigton Square", city: "Birmingham", postalCode: "0123",country: "Korea"))
//
//// 함수의 매개변수 기본값
//func greeting(friend: String, me: String = "조조") {
//    print("Hello \(friend)! I'm \(me)")
//}
//
//greeting(friend: "유바", me: "장비")
//greeting(friend: "dsf")
//
//
////가변 매개변수
//func sayHelloToFriends(me: String, friends: String...) -> String {
//    return "Hello \(friends)! I'm \(me)"
// }
//print(sayHelloToFriends(me: "choseon", friends: "손견", "손책", "장양"))
//print(sayHelloToFriends(me: "조조"))
//
//// 복수
//// 튜플을 함수의 반환 값으로 사용
//func getCountry() -> (dialCode: Int, isoCode: String, name: String){
//    let country = (dialCode: 82, isoCode: "KR", name: "Korea")
//    return country
//}
//
//let ret = getCountry()
//print(ret)
//print(ret.dialCode)
//
//// 시작 숫자부터 끝숫자까지의 합계를 구하는 함수 만들기
//func ifAddRange(start: Int, end: Int) -> String {
//    var sum: Int = 0
//    for i in start...end {
//        sum += i
//    }
//    return "\(start)부터 \(end)까지의 합은 \(sum)입니다."
//}
//
//print(ifAddRange(start: 1, end: 100))
//
//func whileAddRange(start: Int, end: Int) -> String {
//    var sum: Int = 0
//    var cnt: Int = start
//    while cnt <= end {
//        sum += cnt
//        cnt += 1
//    }
//    return "\(start)부터 \(end)까지의 합은 \(sum)입니다."
//}
//
//print(whileAddRange(start: 1, end: 100))
//
//func decisionRange(type: String, start: Int, end: Int) -> String {
//    var sum: Int = 0
//    var type1: String = ""
//    if type == "even" {
//        for i in start...end {
//            if i % 2 == 0 {
//                sum += i
//            }
//        }
//        type1 = "짝수"
//    } else if type == "odd" {
//        for i in start...end {
//            if i % 2 == 1 {
//                sum += i
//            }
//        }
//        type1 = "홀수"
//    } else {
//      return "입력된 항목이 잘못되었습니다."
//    }
//    return "\(start)부터 \(end)까지의 수중 \(type1)의 합은 \(sum) 입니다."
//}
//
////func decisionRange(type: String, start: Int, end: Int) -> String {
////    var sum: Int = 0
////    var cnt: Int = 0
////    var type1: String = ""
////    if type == "even" {
////        cnt = 0
////        type1 = "짝수"
////
////    } else if type == "odd" {
////        cnt = 1
////        type1 = "홀수"
////
////    } else {
////        return "입력된 항목이 잘못되었습니다."
////    }
////    while cnt <= 100 {
////        sum += cnt
////        cnt += 2
////    }
////    return "\(start)부터 \(end)까지의 수중 \(type1)의 합은 \(sum) 입니다."
////
////}
//
//
//print(decisionRange(type: "even", start: 1, end: 100))
//print(decisionRange(type: "odd", start: 1, end: 100))
//
//
///*
// Overloading : 함수의 이름은 중복되도 parameter의 갯수로 구분이 가능
// */
//
//// 도형의 면적, 둘레를 구하는 함수를 구현하라
//// 원
//func shape(_ r:Double) {
//    let pi = 3.14
//    let area = pi * r * r
//    let border = 2 * pi * r
//    print("원, 면적: \(area), 둘레: \(border)")
//}
//// 사각형
//func shape(_ a: Int, _ b: Int) {
//    let area = a * b
//    let border = 2 * (a+b)
//    print("사각형, 면적: \(area), 둘레: \(border)")
//}
//// 직각삼각형
//func shape(_ a: Int, _ b: Int, _ c: Int) {
//    var arr: [Int] = [a,b,c]
//    var max: Int = 0
//    var arr1: [Int] = []
//    if a < b {max = b}
//    if b < c {max = c}
//    for ar in arr {
//        if ar != max {
//            arr1.append(ar)
//        }
//    }
//    let area = arr1[0] * arr1[1] / 2
//    let border = 2 * (arr[0] + arr1[1])
//    print("직각삼각형, 면적: \(area), 둘레: \(border)")
//}
//
//shape(5)
//shape(4,5)
//shape(3,5,4)
var sumNum: Int = 0

print("몇 개의 숫자를 더할까요?", terminator: "")
var inpNum = Int(readLine()!)
if let inpNum1: Int = inpNum {
    

    for i in 1...inpNum1{
        
        sumNum += i
    }
    print("입력한 숫자의 합은 \(sumNum)입니다.")
} else {
    print("Input value is wrong!")
}
