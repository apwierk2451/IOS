//
//  ViewController.swift
//  PageControlQuiz01
//
//  Created by 이은찬 on 2021/12/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNum: UILabel!
    @IBOutlet weak var PageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PageControl.numberOfPages = 10
        PageControl.currentPage = 0
        PageControl.pageIndicatorTintColor = UIColor.green
        PageControl.currentPageIndicatorTintColor = UIColor.red
        lblNum.text = String(PageControl.currentPage+1)
        lblNum.textColor = UIColor.red
    }

    @IBAction func PageChange(_ sender: UIPageControl) {
        lblNum.text = String(PageControl.currentPage + 1)
        if (PageControl.currentPage + 1) % 2 == 0 {
            lblNum.textColor = UIColor.blue
        } else {
            lblNum.textColor = UIColor.red
        }
    }
    
    
}

