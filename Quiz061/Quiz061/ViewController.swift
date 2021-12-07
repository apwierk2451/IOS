//
//  ViewController.swift
//  Quiz061
//
//  Created by 이은찬 on 2021/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgRear: UIImageView!
    @IBOutlet weak var imgFront: UIImageView!

    var imageName = ["flower_01.png", "flower_02.png", "flower_01.png", "flower_04.png", "flower_01.png", "flower_06.png"]
    
    var numFrontImage = 0
    var numRearImage = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        numFrontImage -= 1
        numRearImage -= 1
        
        if numFrontImage < 0 {
            numFrontImage = imageName.count - 1
        }
        
        if numRearImage < 0 {
            numRearImage = imageName.count - 1
        }
        displayImage()
        
    }
    @IBAction func btnNext(_ sender: UIButton) {
        numFrontImage += 1
        numRearImage += 1
        
        if numFrontImage >= imageName.count {
            numFrontImage = 0
        }
        
        if numRearImage >= imageName.count {
            numRearImage
        }
        
        displayImage()
        
    }
    
    func displayImage() {
        imgTitle.text = imageName[numFrontImage]
        imgFront.image = UIImage(named: <#T##String#>)
    }
    
}

