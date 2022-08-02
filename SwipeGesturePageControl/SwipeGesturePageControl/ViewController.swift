//
//  ViewController.swift
//  SwipeGesturePageControl
//
//  Created by 이은찬 on 2021/12/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var PageControl: UIPageControl!
    
    var img = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PageControl.numberOfPages = img.count
        PageControl.currentPage = 0
        PageControl.pageIndicatorTintColor = UIColor.green
        PageControl.currentPageIndicatorTintColor = UIColor.red
        
        myImageView.image = UIImage(named: img[PageControl.currentPage])
        
        makeSingleTouch()
    }

    @IBAction func PageChange(_ sender: UIPageControl) {
        myImageView.image = UIImage(named: img[PageControl.currentPage])
        print(PageControl.currentPage)
    }
    
    func makeSingleTouch() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
    }
        
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.right:
                PageControl.currentPage -= 1
                myImageView.image = UIImage(named: img[PageControl.currentPage])
            case UISwipeGestureRecognizer.Direction.left:
                PageControl.currentPage += 1
                myImageView.image = UIImage(named: img[PageControl.currentPage])
            default:
                break
            }
        }
    }
    
}

