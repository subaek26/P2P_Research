//
//  ListOfChatView.swift
//  P2P_chatBox
//
//  Created by Sunny Baek on 6/23/23.
//

import SwiftUI

struct ListofChatView: View {
    
    // giving it a name
    @State var ViewModel = ChatViewModel()
    // TODO: useful for searching bar
    // @State private var query = ""
    
    //
    public var username: String
    
    // Chaning the username to show different list of names by the username
    init(_ username: String) {
        self.username = username
        ViewModel.changeUsername(username: username)
    }
    
    var body: some View {
        ZStack{
            ChatRow
        }
    }
}
