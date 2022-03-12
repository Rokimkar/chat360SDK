//
//  ChatWebViewController.swift
//  Chat360SDK
//
//  Created by Sanchit Kumar Singh on 12/03/22.
//

import UIKit
import WebKit

class ChatWebViewController: UIViewController {
    
    private var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureChatWebView()
    }
    
    private func configureChatWebView(){
        let urlToLoad = URL(string: "https://chat360.io")
        let request = URLRequest(url: urlToLoad!)
        webView.load(request)
    }
    
    override func loadView() {
        let config = WKWebViewConfiguration.init()
        webView = WKWebView.init(frame: .zero, configuration: config)
        webView.uiDelegate = self
        self.view = webView
    }
}

extension ChatWebViewController: WKUIDelegate{
    
}
