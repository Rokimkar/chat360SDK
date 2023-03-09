//
//  ViewController.swift
//  Chat360Example
//
//  Created by Sanchit Kumar Singh on 12/03/22.
//

import UIKit
import Chat360SDK

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func launchTapped(_ sender: Any) {
        let config  = ChatConfigs(botId: "e4e9d4f8-4bcd-46f6-a8a3-6c9126d1bb16", appId: "com.chat360.chat360demoapp")
        ChatLauncher.showChat(with: config, parentController: self)
    }
    
}

