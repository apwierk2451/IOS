//
//  ViewController.swift
//  ImageView
//
//  Created by 이은찬 on 2021/11/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnResize: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    
    var imgOn = UIImage(named: "lamp_on.png")
    var imgOff = UIImage(named: "lamp_off.png")
    var isZoom: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = imgOn
        print(type(of: imgOn))
    }
    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat!
        var newHeight: CGFloat!
        
        if isZoom {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("Image 확대", for: .normal)
            isZoom = !isZoom
            
        } else {
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("Image 축소", for: .normal)
            isZoom = !isZoom
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
    }
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
    

}

