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
        let config  = ChatConfigs.init(url: "https://chat360.io")
        ChatLauncher.showChat(with: config, parentController: self)
//        let config = ChatConfigs(url: "https:chat360.io")
//        ChatLauncher.showChat(with: config, parentController: self)
    }
    
}

