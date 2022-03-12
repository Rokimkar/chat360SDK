//
//  ChatLauncher.swift
//  Chat360SDK
//
//  Created by Sanchit Kumar Singh on 12/03/22.
//

import Foundation
import UIKit

public class ChatLauncher{
    public static func showChat(with config: ChatConfigs, parentController: UIViewController){
        let chatVC = ChatWebViewController.init(nibName: "ChatWebViewController", bundle: nil)
        chatVC.modalPresentationStyle = .pageSheet
        chatVC.config = config
        parentController.present(chatVC, animated: true) {
            
        }
    }
}

public struct ChatConfigs{
    let url: String
    
    public init(url: String){
        self.url = url
    }
}
