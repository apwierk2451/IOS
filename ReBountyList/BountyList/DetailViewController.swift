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
    @IBOutlet weak var namelabelcenterX: NSLayoutConstraint!
    @IBOutlet weak var bountylabelcenterX: NSLayoutConstraint!
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        prepareAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAnimation()
    }
    
    private func prepareAnimation() {
//        namelabelcenterX.constant = view.bounds.width
//        bountylabelcenterX.constant = view.bounds.width
        
        nameLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        bountyLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        
        // 현재 label들이 화면 우측에서 3배로 커지고 180도 돌아간 상황
        
        nameLabel.alpha = 0
        bountyLabel.alpha = 0
    }
    
    private func showAnimation() {
//        namelabelcenterX.constant = 0
//        bountylabelcenterX.constant = 0

        
//        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {            self.view.layoutIfNeeded()
//        }, completion: nil)
        
//        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: { self.view.layoutIfNeeded() }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: {
            self.bountyLabel.transform = CGAffineTransform.identity
            self.bountyLabel.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: { self.nameLabel.transform = CGAffineTransform.identity
            self.nameLabel.alpha = 1
        }, completion: nil)
        
        UIView.transition(with: imgview, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
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
