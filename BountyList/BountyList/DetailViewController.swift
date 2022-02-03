//
//  DetailViewController.swift
//  BountyList
//
//  Created by 이은찬 on 2022/02/02.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MVVM

    // Model
    // - BountyInfo
    // > BountyInfo 만들자

    // View
    // - imgView, nameList, bountyList
    // > view들은 viewModel을 통해서 구성되기 ?

    // Viewmodel
    // - DetailViewModel
    // > ViewLayer에서 필요한 메서드 만들기
    // > Model 가지고 있기,, BountyInfo들

    @IBOutlet weak var imgview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        // Do any additional setup after loading the view.
    }
  
    func updateUI() {
        
        if let bountyInfo = viewModel.bountyInfo {
            imgview.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
    }
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    
    }
    
    
}

class DetailViewModel {
    var bountyInfo : BountyInfo?
    
    func update(model: BountyInfo) {
        bountyInfo = model
    }
}
