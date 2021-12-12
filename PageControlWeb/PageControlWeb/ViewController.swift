//
//  ViewController.swift
//  PageControlWeb
//
//  Created by 이은찬 on 2021/12/11.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var lblUrl: UILabel!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var PageControl: UIPageControl!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    let site = ["www.naver.com", "www.google.com", "www.daum.net", "www.nate.com", "www.cnn.com", "www.cbs.com", "www.youtube.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PageControl.numberOfPages = site.count
        PageControl.currentPage = 0
        PageControl.pageIndicatorTintColor = UIColor.green
        PageControl.currentPageIndicatorTintColor = UIColor.red
        lblUrl.text = site[0]
        let a = checkurl(lblUrl.text!)
        loadWebPage(url: a)
        myWebView.navigationDelegate = self
    }
    
    @IBAction func PageChange(_ sender: UIPageControl) {
        lblUrl.text = site[PageControl.currentPage]
        let a = checkurl(lblUrl.text!)
        loadWebPage(url: a)
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

}

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
