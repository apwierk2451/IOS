//
//  BountyViewController.swift
//  BountyList
//
//  Created by 이은찬 on 2021/12/07.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MVVM

    // Model
    // - BountyInfo
    // > BountyInfo 만들자

    // View
    // - ListCell
    // > ListCell 필요한 정보를 ViewModel한테서 받겠다
    // > ListCell은 ViewModel로 부터 받은 정보로 View 업데이트 하기

    // Viewmodel
    // - BountyViewModel
    // > BountyViewModel을 만들고, ViewLayer에서 필요한 메서드 만들기
    // > Model 가지고 있기,, BountyInfo들

    let viewModel = BountyViewModel()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // detailViewController 한테 데이터를 줌
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int {
                
                let bountyInfo = viewModel.bountyInfoList[index]

                vc?.viewModel.update(model: bountyInfo)

            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        
        cell.update(info: bountyInfo)
        
        return cell
    }
    
    
    // UITabelViewDelegate 클릭되었을때 반응
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("---> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }

}


class ListCell: UITableViewCell {
    @IBOutlet weak var imgview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func update(info: BountyInfo) {
        imgview.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}

class BountyViewModel {
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 3300000),
        BountyInfo(name: "chopper", bounty: 40),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 300000000),
        BountyInfo(name: "nami", bounty: 16000000),
        BountyInfo(name: "robin", bounty: 80000000),
        BountyInfo(name: "sanji", bounty: 77000000),
        BountyInfo(name: "zoro", bounty: 120000000)
    ]
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted { prev, next in
            return prev.bounty > next.bounty
        }
        return sortedList
    }
    
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo {
        return sortedList[index]
    }
}
