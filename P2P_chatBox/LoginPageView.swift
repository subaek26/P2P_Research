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
    
    
    var body: some View {
        NavigationView {
            
        }
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
