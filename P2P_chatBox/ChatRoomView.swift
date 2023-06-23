//
//  ChatRoomView.swift
//  P2P_chatBox
//
//  Created by LostZ on 2023/6/23.
//

import SwiftUI

struct ChatRoomView: View {
    @EnvironmentObject var ViewModel: ChatViewModel
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    let chat: P2PChat
    
    @State private var text = ""
    @FocusState private var messageIDToScroll: UUID?
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                    .navigationBarBackButtonHidden(true)
                   .toolbar(content: {
                       ToolbarItem (placement: .navigationBarLeading)  {
                                
                           Button(action: {
                               presentationMode.wrappedValue.dismiss()
                           }, label: {
                               Image(systemName: "arrow.left")
                               .foregroundColor(.black)
                               Text("")
                           })
                     
                           
                           
                       }
                       })
