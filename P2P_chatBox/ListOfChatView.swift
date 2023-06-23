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
        List{ chat in
        ZStack{
            ChatRow(P2PChat: chat)
            NavigationLink(destination: {
                ChatRoomView()
            })
        }
    }
}


struct ChatRow: View {
    
    let chat: P2PChat
    
    var body: some View {
        HStack {
            ZStack {
                VStack(alignment: .leading, spacing: 5) {
                    HStack{
                        Text(chat.person.name)
                            .bold()
                        Spacer()
                    }
                    HStack {
                        Text(chat.messages.last?.text ?? "")
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .frame(height: 50, alignment: .top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.trailing, 40)
                    }
                }
            }
        }
        .frame(height:80)
    }
}
