//
//  ViewController.swift
//  OpenPDF
//
//  Created by Neeraj kumar on 06/08/19.
//  Copyright © 2019 prolifics. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func openPDF(_ sender: Any) {
        
        let url = NSURL(string: "https://www.cs.cmu.edu/afs/cs.cmu.edu/user/gchen/www/download/java/LearnJava.pdf")
        
        let webView = WKWebView(frame: view.frame)
        let urlRequest = NSURLRequest(url: url as! URL)
        webView.load(urlRequest as URLRequest)
        view.addSubview(webView)
    }
    
    @IBAction func localPdf(_ sender: Any) {
       
        let url = Bundle.main.url(forResource: "ibm_mobilefirst_platform_foundation_doc", withExtension: "pdf")
        if let url = url {
            let webView = WKWebView(frame: view.frame)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            view.addSubview(webView)
        }
        
    }
}

