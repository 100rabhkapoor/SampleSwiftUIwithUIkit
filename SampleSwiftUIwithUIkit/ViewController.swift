//
//  ViewController.swift
//  SampleSwiftUIwithUIkit
//
//  Created by 100rabh on 02/09/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func openChatView(_ sender: UIButton) {
        let chatViewController = ChatViewController(userName: "Test User")
        chatViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(chatViewController, animated: false)
    }
}

