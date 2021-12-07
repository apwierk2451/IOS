//
//  main.swift
//  Day01
//
//  Created by 이은찬 on 2021/11/06.
//

import Foundation

/*
 화면출력
 */

// 문자 출력
print("안녕하세요 !😀")

// 숫자 출력
print(1234)
print("1234")

// 숫자와 문자 비교
print(1234 + 123)
print("1234 + 123")

/*
 상수와 변수의 작명 규칙
 - Camel Case : variable, constant, function
 ex) studentName, studentAge
 - Pascal Case: class, struct, extension
 ex_ StudentName, StudentAge
 - Snake Case : undervar(_)로 연결하여 사용
 ex) student_name, student_age
 
 - 대소문자 구분
 - 첫 글자를 숫자나 특수문자로 사용할 수 없으나 _ 는 사용 가능(*)
 */

/*
 상수로 Hello World! 만들기
 */

let message = "Hello World!"
print(message)

/*
 변수로 Hello World! 만들기
 */

var message1 = "Hello World!"
message1 = "Hello"
print(message1)

/*
 - 상수 : 한 번 선언된 값에 대해 변경이 불가능
 - 변수 : 한 번 선언된 값에 대해 변경이 가능
 
 - 상수 선언 방법
-- Basic Method --
    : let <variable name> : <type> = <value>
 -- 추론방법 : 값이 명확할 경우 --
    : let <variable name> = <value>
 
 - 변수 선언 방법
-- Basic Method --
    : var <variable name> : <type> = <value>
 -- 추론방법 : 값이 명확할 경우 --
    : var <variable name> = <value>
 */

/*
 상수 선언 후에 나중에 값 할당하기
 : 나중에 할당하려고 하는 상수나 변수는 Type을 꼭 명시해 주어야 한다.
 */

let inputA = 100
let inputB = 200
let sum: Int = inputA + inputB
print(sum)

//---
var nickName: String
nickName = "유비"
nickName = "관우"
print(nickName)

// 한 줄에 동시 선언시 ,(콤마) 사용
var aNum = 9, bNum = 10
print(aNum, bNum, aNum + bNum)
print(aNum, "+", bNum, "=", aNum + bNum)

/*
 문자열 보간법 (String Interpolation)
: print 실행 중 문자열, 변수, 상수의 값을 표현하기 위해 사용
 */

print("\(aNum) + \(bNum) = \(aNum+bNum)")

let age: Int = 10
print("저는 \(age)살 입니다.")
// 저의 형은 14살 입니다.
print("저의 형은 \(age+4)살 입니다.")


//---------
var name1 = "유비"
var age1 = 34
var gender1 = "남자"

// 유비 34 남자
print(name1, age1, gender1)

// 회원의 이름은 유비이고 나이는 34이며 성별은 남자 입니다.
print("회원의 이름은 \(name1)이고 나이는 \(age1)이며 성별은 \(gender1) 입니다.")

// 초코파이 5개를 구매한 결과를 출력
var price = 300
var cnt = 5
var total = price * cnt
print("초코파이 가격 : \(price)원")
print("수량 : \(cnt)개")
print("합계 : \(total)원")

let aa = "합계 : \(total)원"
print(aa)

/*
 기본 데이터 타입
 : Swift의 기본 데이터 타입
 Int, String, Double, Character, UInt, Bool
 */

// Bool
var someBool: Bool = true
someBool = false

// Int
var someInt: Int = -100
//someInt = 100.12 Error 정수형 타입에 실수가 들어감
someInt = 100_000_000 // _ 는 코딩할때만 보임 실행할 경우 숫자만 계산
print(someInt)

// UInt
var someUInt: UInt = 100
//someUInt = -2 Error 음의 값이 없는 정수형에 음수가 들어갈 경우

// Float
var someFloat: Float = 3.14
print(someFloat)
someFloat = 3
print(someFloat)
someFloat = 10_000.44_556
print(someFloat)

// Double : Float보다 표현할 수 있는 범위가 큼
var someDouble: Double = 3.14
someDouble = 3
someDouble = 10_000.44_556

let test1 = 123
print(type(of: test1))

let test2 = 123.456
print(type(of: test2))

// 숫자 Type 변환
let doubleNum = 4.999999
var castToInt = Int(doubleNum)
var roundToInt = Int(doubleNum.rounded()) // 반올림

print("Origin : \(doubleNum), After Cast : \(castToInt), After Rounded : \(roundToInt) ")

// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "a"
someCharacter = "가"
//someCharacter = "가나다"

// String
var someString: String = "하하하 😂"
someString = someString + " 웃으면 복이와요!"
someString += " ^^"
print(someString)

// 모양 그대로 출력 """ """
someString = """
    12345
    abcdefg
가나다라마바
"""
print(someString)

// 문자열과 특수 문자
// 출력할 때 " 출력
let wiseWords = "\"Imagination is more than important knoewledge\" - Einstein"
print(wiseWords)

print("aa\tbb\ncc")
print("국어\t영어\t수학")
print("--\t--\t--")
print("\(80)\t\(90)\t\(70)")

//----------------

var name11: String
var size11: Int
var weigth11: Double
var bag11: Bool
var color11: Character

name11 = "맥북 프로"
size11 = 16
weigth11 = 2.56
bag11 = false
color11 = "백"

print(name11, size11, weigth11, bag11, color11)

/*
 회원 정보를 구현하세요
 id: 문자열, 암호: 문자열, 나이: 정수, 키(신장): 실수, 결혼여부: Bool, 성별: 문자
 */

let id: String
let pw: String
var age12: Int
let height: Double
var married: Bool
let gender: Character

id = "apwierk"
pw = "1234"
age12 = 26
height = 187.3
married = false
gender = "남"

print(id, pw, age12, height, married, gender)
