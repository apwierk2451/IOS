//
//  main.swift
//  SaturdayStudy
//
//  Created by 이은찬 on 2022/04/23.
//

enum NationalOfShop {
    case korea
    case usa
    case error
}

class Shop {
    var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
    
    func printMenu(shop: Shop) {
        for i in 0...shop.productsList.count-1 {
            print("\(i)번 : \(shop.productsList[i] ?? "")")
        }
        print("\(shop.productsList.count)번 : 숍 선택")
    }
    
    func checkInputNumber(shop: Shop, input: Int) {
        switch input {
        case 0, 1, 2, 3, 4, 5:
            if shop.productsList[input] != nil {
                calculateTrade(shop: shop, input: input)
            } else {
                bonf.printSoldout()
            }
        case shop.productsList.count:
            bonf.startShopping()
        default:
            print("잘못입력")
        }
    }
    
    private func calculateTrade(shop: Shop, input: Int) {
        bonf.budget -= 1000
        shop.productsList[input] = nil
        print("거래완료")
    }
}

class Camper {
    var budget: Int = 3000
    
    func startShopping() {
        printShopPlace()
    }
    
    func printShopPlace() {
        print("0: Korea, 1: USA [입력] :", terminator: " ")
        selectShop()
    }
    
    func selectShop() {
        let input = readLine() ?? ""
        switch input {
        case "0":
            connectShop(inputtedInformation: NationalOfShop.korea)
        case "1":
            connectShop(inputtedInformation: NationalOfShop.usa)
        default:
            connectShop(inputtedInformation: NationalOfShop.error)
        }
    }
    
    func connectShop(inputtedInformation: NationalOfShop) {
        switch inputtedInformation {
        case .korea:
            startBuy(shop: shopKorea)
        case .usa:
            print("This is \(inputtedInformation.self) !")
            startBuy(shop: shopUSA)
        case .error:
            print("잘못 입력")
            startShopping()
        }
    }
    
    func startBuy(shop: Shop) {
        while budget > 0 {
            shop.printMenu(shop: shop)
            buy(shop: shop, productNumber: inputProductNumber())
        }
    }
    
    func buy(shop: Shop, productNumber: Int) {
        shop.checkInputNumber(shop: shop, input: productNumber)
        printNoMoney(shop: shop)
    }
    
    
    
    func inputProductNumber() -> Int {
        print("입력 :", terminator: " ")
        if let a = Int(readLine() ?? "") {
            return a
        }
        return -1
    }
    
    func printSoldout() {
        print("주문하신 제품은 [품절]입니다.")
    }
    
    
    
    func printNoMoney(shop: Shop) {
        if budget <= 0 {
            shop.printMenu(shop: shop)
            print("\n예산 초과")
        }
    }
}

var shopKorea = Shop()
var shopUSA = Shop()


let bonf = Camper()
bonf.startShopping()
