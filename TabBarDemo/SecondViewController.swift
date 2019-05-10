//
//  SecondViewController.swift
//  TabBarDemo
//
//  Created by Martin Løseth Jensen on 30/04/2019.
//  Copyright © 2019 Martin Løseth Jensen. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController, WKNavigationDelegate {
    var getUrl: TableViewCell = TableViewCell()
    var webView: WKWebView?
    var receivedString = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. create URL
        let url = URL(string: receivedString)!
        // 2. load
        webView?.load(URLRequest(url: url))
        
    }

    override func loadView() {
        webView = WKWebView()
        webView?.navigationDelegate = self
        self.view = webView
    }

    func reloadWebView() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
    }

}
