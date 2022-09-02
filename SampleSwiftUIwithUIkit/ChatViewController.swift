//
//  ChatViewController.swift
//  SampleSwiftUIwithUIkit
//
//  Created by 100rabh on 02/09/22.
//

import UIKit
import SwiftUI

class ChatViewController: UIViewController {

    var userName: String
    
    init(userName: String) {
        self.userName = userName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let swiftUIView: some View = ChatView(otherUsername: userName)
        let hostingController = UIHostingController(rootView: swiftUIView)
        addChild(hostingController)
        hostingController.view.frame = view.bounds
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
        title = userName
    }
}
