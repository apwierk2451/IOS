//
//  ViewController.swift
//  Quiz06
//
//  Created by 이은찬 on 2021/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    
    var imageName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    var numImage = 0
    
    func displayImage(image: Int) {
        imgTitle.text = imageName[image]
        imgView.image = UIImage(named: imageName[image])
        imgView2.image = UIImage(named: imageName[image+1])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImage(image: numImage)
    }
    @IBAction func btnPrev(_ sender: UIButton) {
        numImage -= 1
        if numImage < 0 {
            numImage = imageName.count - 1
        }
        displayImage(image: numImage)

    }
    @IBAction func btnNext(_ sender: UIButton) {
        numImage += 1
        if numImage >= imageName.count {
            numImage = 0
        }
        displayImage(image: numImage)

    }
}

