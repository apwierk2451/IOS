//
//  ViewController.swift
//  SwipeGesture
//
//  Created by 이은찬 on 2021/12/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgViewUp: UIImageView!
    @IBOutlet weak var imgViewDown: UIImageView!
    @IBOutlet weak var imgViewLeft: UIImageView!
    @IBOutlet weak var imgViewRight: UIImageView!
    
    var imgLeft: [UIImage] = []
    var imgRight: [UIImage] = []
    var imgUp = [UIImage]()
    var imgDown = [UIImage]()
    
    let numOfTouches = 2 // 두 손가락
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Image 설정하기
        makeImages()
        
        // 초기화면
        imgViewUp.image = imgUp[0]
        imgViewDown.image = imgDown[0]
        imgViewRight.image = imgRight[0]
        imgViewLeft.image = imgLeft[0]
        
        // 한 손가락 Gesture 구성
        makeSingleTouch()
        
        // 두 손가락 Gesture 구성
        makeMultiTouch()
    }

    func makeImages() {
        
        // Basic Image
        imgUp.append(UIImage(named: "arrow-up-black.png")!)
        imgDown.append(UIImage(named: "arrow-down-black.png")!)
        imgRight.append(UIImage(named: "arrow-right-black.png")!)
        imgLeft.append(UIImage(named: "arrow-left-black.png")!)
        
        // Single Touch Image
        imgUp.append(UIImage(named: "arrow-up-red.png")!)
        imgDown.append(UIImage(named: "arrow-down-red.png")!)
        imgRight.append(UIImage(named: "arrow-right-red.png")!)
        imgLeft.append(UIImage(named: "arrow-left-red.png")!)
        
        // Double Touch image
        imgUp.append(UIImage(named: "arrow-up-green.png")!)
        imgDown.append(UIImage(named: "arrow-down-green.png")!)
        imgRight.append(UIImage(named: "arrow-right-green.png")!)
        imgLeft.append(UIImage(named: "arrow-left-green.png")!)
    }
    
    func makeSingleTouch() {
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
    }
        
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            imgViewUp.image = imgUp[0]
            imgViewDown.image = imgDown[0]
            imgViewRight.image = imgRight[0]
            imgViewLeft.image = imgLeft[0]
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.up:
                imgViewUp.image = imgUp[1]
            case UISwipeGestureRecognizer.Direction.down:
                imgViewDown.image = imgDown[1]
            case UISwipeGestureRecognizer.Direction.right:
                imgViewRight.image = imgRight[1]
            case UISwipeGestureRecognizer.Direction.left:
                imgViewLeft.image = imgLeft[1]
            default:
                break
            }
        }
    }
    
    func makeMultiTouch() {
        let swipeUpMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeUpMulti.direction = UISwipeGestureRecognizer.Direction.up
        swipeUpMulti.numberOfTouchesRequired = numOfTouches // 두 손가락 터치
        self.view.addGestureRecognizer(swipeUpMulti)
        
        let swipeDownMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeDownMulti.direction = UISwipeGestureRecognizer.Direction.down
        swipeDownMulti.numberOfTouchesRequired = numOfTouches // 두 손가락 터치
        self.view.addGestureRecognizer(swipeDownMulti)
        
        let swipeRightMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeRightMulti.direction = UISwipeGestureRecognizer.Direction.right
        swipeRightMulti.numberOfTouchesRequired = numOfTouches // 두 손가락 터치
        self.view.addGestureRecognizer(swipeRightMulti)
        
        let swipeLeftMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_ :)))
        swipeLeftMulti.direction = UISwipeGestureRecognizer.Direction.left
        swipeLeftMulti.numberOfTouchesRequired = numOfTouches // 두 손가락 터치
        self.view.addGestureRecognizer(swipeLeftMulti)
        
        
    }
    
    @objc func respondToSwipeGestureMulti(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            imgViewUp.image = imgUp[0]
            imgViewDown.image = imgDown[0]
            imgViewRight.image = imgRight[0]
            imgViewLeft.image = imgLeft[0]
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.up:
                imgViewUp.image = imgUp[2]
            case UISwipeGestureRecognizer.Direction.down:
                imgViewDown.image = imgDown[2]
            case UISwipeGestureRecognizer.Direction.right:
                imgViewRight.image = imgRight[2]
            case UISwipeGestureRecognizer.Direction.left:
                imgViewLeft.image = imgLeft[2]
            default:
                break
            }
        }
    }
    
} // ViewController
