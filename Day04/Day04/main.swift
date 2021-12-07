//
//  main.swift
//  Day04
//
//  Created by 이은찬 on 2021/11/14.
//

import Foundation

/*
 
 Collection(컬렉션) : 여러 값들을 묶어서 하나의 변수로 사용
 - Array : 순서가 있는 리스트 컬렉션
 - Dictionary : Key와 Value의 쌍으로 이루어진 컬렉션
 - set : 순서가 없고, 중복된 데이터는 추가되지 않습니다, 집합연산
 
 
 */
var intVariable: [Int] = [0, 10, 100]
var intVariable2: [Int] = [0, 10, 100]
for i in 1...100{
    intVariable2.append(i)
}

print(intVariable2)

// 배열의 data 가져오기
print(intVariable[1])
print(intVariable[0...1])

// 배열에서 필요없는 자료 삭제하기
intVariable.remove(at: 0) // 0번째 value 삭제
print(intVariable)

// 배열에서 맨 마지막 자료 삭제하기
intVariable.removeLast()
print(intVariable)

// 배열 전체 삭제하기
intVariable.removeAll()
print(intVariable)

// 배열의 data 갯수 확인하기
print("count if integers : \(intVariable.count)")

// Type에 따른 배열 선언
var doubleArray: [Double] = []
var StringArray: [String] = []

// 불변 Array
let intVariable3: [Int] = [1,2,3]
//intVariable3.append(10)
//intVariable3.removeAll()

// 기본값으로 설정된 배열 생성하기
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print(anotherThreeDoubles)

// 배열 합치기
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)

// threeDoubles와 anotherThreeDoubles의 index별의 합계 계산하기
var sixDoubles2: [Double] = []
for i in 0..<anotherThreeDoubles.count {
    sixDoubles2.append(threeDoubles[i] + anotherThreeDoubles[i])
}
print(sixDoubles2)

// 문자를 이용한 배열의 생성
var shoppingList: [String] = ["Eggs", "Milk"]
print(shoppingList)

var shoppingList1: [String] = [String](repeating: "abc", count: 3)
print(shoppingList1)

// 문자열 배열의 출력
for i in 0..<shoppingList.count {
    print(shoppingList[i])
}

// 배열의 인덱스 갯수 확인
print("The shopping list contains \(shoppingList.count) items.")

// 배열이 비어있는지 확인
if shoppingList.isEmpty  {
    print("The shopping list is empty")
}else{
    print("The shopping list is not empty")
}

// 배열의 데이터 추가
shoppingList.append("Four")
print(shoppingList.count, shoppingList)

shoppingList += ["Baking Powder"]
print(shoppingList.count, shoppingList)

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList.count, shoppingList)

print(shoppingList[0])

// 배열의 특정 위치 데이터 변경 및 제거
shoppingList[4...6] = ["Bananas", "Apples"]
print(shoppingList.count, shoppingList)

// 배열의 특정 위치 데이터 추가
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList.count, shoppingList)

// 배열의 값과 인덱스가 필요한 경우
for (index, value) in shoppingList.enumerated() {
    print("Item index: \(index) / value: \(value)")
}

// 배열의 합계 구하기
let arr = [23, 42, 78, 91, 57, 68, 52, 26, 15, 72]
var sum = 0
for i in 0..<arr.count {
    sum += arr[i]
}
print(sum)

sum = 0
for i in arr {
    sum += i
}
print(sum)

// arr 최대값 찾기
var max = 0
for i in arr {
    if max < i {
        max = i
    }
}
print(max)

print(arr.max()!)
