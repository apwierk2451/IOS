//
//  SiteRequest.swift
//  Quiz14-1
//
//  Created by 이은찬 on 2021/12/12.
//

import WebKit

class SiteRequest {
    func loadWebpage(url: String) -> URLRequest {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        
        return myRequest
    }
}
