//
//  GViewController.swift
//  Quiz14-1
//
//  Created by 이은찬 on 2021/12/12.
//

import UIKit
import WebKit

class GViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myWebView.navigationDelegate = self
        
        // class의 함수를 이용한 web 구성
        let site: SiteRequest = SiteRequest()
        let myRequest = site.loadWebpage(url: "https://www.google.com")
        myWebView.load(myRequest)
    }
    

} //GViewController

extension GViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}
