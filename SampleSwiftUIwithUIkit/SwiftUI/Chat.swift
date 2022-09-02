//
//  Chat.swift
//  SampleSwiftUIwithUIkit
//
//  Created by 100rabh on 02/09/22.
//

import SwiftUI

struct CustomField: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
    }
}

struct ChatView: View {
    @State var message: String = ""
    let otherUsername: String
    
    init(otherUsername: String) {
        self.otherUsername = otherUsername
    }
    
    var body: some View {
        VStack {
            HStack {
                TextField("Message...", text: $message)
                    .modifier(CustomField())
                
            }
            .padding()
        }.background(Color.white)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(otherUsername: "Test")
            .preferredColorScheme(.light)
    }
}

