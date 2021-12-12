//
//  ViewController.swift
//  SwipeGestureWeb
//
//  Created by 이은찬 on 2021/12/12.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var PageControl: UIPageControl!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    let sites = ["www.naver.com", "www.google.com", "www.daum.net", "www.nate.com", "www.cnn.com", "www.cbs.com", "www.youtube.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PageControl.numberOfPages = sites.count
        PageControl.currentPage = 0
        PageControl.pageIndicatorTintColor = UIColor.green
        PageControl.currentPageIndicatorTintColor = UIColor.red
        let url = checkurl(sites[0])
        loadWebPage(url: url)
        
        myWebView.navigationDelegate = self
        
        makeSingleTouch()

    }
    
    func loadWebPage(url: String) {
        let myUrl = URL(string: url)
        let myRequrest = URLRequest(url: myUrl!)
        
        myWebView.load(myRequrest)
    }
    
    func checkurl(_ url: String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        
        if !flag {
            strUrl = "http://" + strUrl
        }
        return strUrl
    }

    @IBAction func PageChange(_ sender: UIPageControl) {
        let url = checkurl(sites[PageControl.currentPage])
        loadWebPage(url: url)
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
                let url = checkurl(sites[PageControl.currentPage])
                loadWebPage(url: url)
            case UISwipeGestureRecognizer.Direction.left:
                PageControl.currentPage += 1
                let url = checkurl(sites[PageControl.currentPage])
                loadWebPage(url: url)
            default:
                break
            }
        }
    }
    
} // ViewController

extension ViewController: WKNavigationDelegate {
    // Indicator 시작
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    // Indicator 종료
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
}
