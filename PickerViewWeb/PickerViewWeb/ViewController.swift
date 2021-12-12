//
//  ViewController.swift
//  PickerViewWeb
//
//  Created by 이은찬 on 2021/12/11.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var PickerWeb: UIPickerView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    let site = ["www.naver.com", "www.google.com", "www.daum.net", "www.nate.com", "www.cnn.com", "www.cbs.com", "www.youtube.com"]
    
    let siteName = ["네이버", "구글", "다음", "네이트", "씨엔엔", "씨비에스", "유튜브"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage(url: "http://www.naver.com")
        PickerWeb.dataSource = self
        PickerWeb.delegate = self
        myWebView.navigationDelegate = self
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


} //ViewController

extension ViewController: UIPickerViewDataSource {
    // PickerView column갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // PickerView row갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return site.count
    }
}

extension ViewController: UIPickerViewDelegate {
    // Title 정의
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(siteName[row])"
    }
    
    // pickerView에서 선택했을 경우
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myUrl = checkurl(site[row])
        loadWebPage(url: myUrl)
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

