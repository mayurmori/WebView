//
//  ViewController.swift
//  WebView
//
//  Created by Mayur Mori on 14/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    // MARK: - PROPERTIES -
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    // MARK: - VIEW LIFE CYCLE METHODS -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.google.co.in/")!
        webView.load(URLRequest(url: url))
        
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
}
