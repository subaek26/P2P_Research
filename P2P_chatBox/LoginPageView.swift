//
//  LoginPageView.swift
//  P2P_chatBox
//
//  Created by Sunny Baek on 6/20/23.
//

import SwiftUI

struct LoginPageView: View {
    // declaring a username to its own ID
    @State public var username: String = UserDefaults.standard.string(forKey: UUID().uuidString) ?? "" // take cares of optional but cannot be empty...
    // showing the login page before the user enter thier username
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Sign In")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                TextField("Enter Your Name", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                Button("Sign In") {
                    authenticateUser(username: username)
                }
                NavigationLink(destination: ListOfChatView(username), isActive: $showingLoginScreen) {
                    EmptyView()
                }
            }
        }
    }
    func authenticateUser(username: String) {
        if username.lowercased() != "" {
        }
    }
}
        
        
// showing the perview of the login page
struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
