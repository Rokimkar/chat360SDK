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
    var config: ChatConfigs?

    override func viewDidLoad() {
        super.viewDidLoad()
        configureChatWebView()
    }
    
    private func configureChatWebView(){
        if let url = config?.url{
            let urlToLoad = URL(string: url)
            let request = URLRequest(url: urlToLoad!)
            webView.load(request)
        }
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
