//
//  FirstVCDetail.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/8.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class FirstVCDetail: UIViewController ,UIWebViewDelegate{

    @IBOutlet weak var webView: UIWebView!
    var url:String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.isOpaque = true
        if let url = self.url {
//            let urlReal = url.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
            if let urlobj = URL.init(string: url) {
                let request = URLRequest(url:urlobj)
                webView.loadRequest(request)
            }
            webView.delegate = self
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
//        print("i was called")
//        let command = "var array = document.getElementsByClassName(\"MfwHead\" ); array = [].slice.call(array); array.forEach(function(child){ child.parentNode.removeChild(child);});"
//        webView.stringByEvaluatingJavaScript(from: command)
    }
    
    

}
