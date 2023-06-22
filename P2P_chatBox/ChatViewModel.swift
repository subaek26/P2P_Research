//
//  ChatViewModel.swift
//  P2P_chatBox
//
//  Created by Sunny Baek on 6/22/23.
//

import Foundation

class ChatViewModel: ObservableObject {
    // example persons
    static let persons = [
        P2PPerson(name: "Jack"),
        P2PPerson(name:"Dr. Mendes"),
        P2PPerson(name: "Sam"),
        P2PPerson(name: "Lily"),
        P2PPerson(name: "Erica"),
        P2PPerson(name: "Josh")
    ]
    
    // example messages
    // each messages contain text, type, and a date
    static let messages = [
        P2PMessage("Hey Jack", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        P2PMessage("Hey Jack, What are you doing?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
        P2PMessage("I am just developing an WhatsApp Clone App", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        P2PMessage("Oh wow, that is really cool", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
        P2PMessage("Yeah, I have been pretty busy with it", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
        P2PMessage("Hi Jack", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
        P2PMessage("I am bored", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
        P2PMessage("How are you doing today?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 10)),
        P2PMessage("Not much. Just enjoying the summer", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 10))
    ]
    
    // example maps for the three users
    static let chatsForUser1 = [
        P2PChat(person: persons[0], messages: [messages[5], messages[6]]),
        P2PChat(person: persons[1], messages: [messages[8]])
    ]
    
    static let chatsForUser2 = [
        P2PChat(person: persons[2], messages: [messages[5], messages[6]]),
        P2PChat(person: persons[3], messages: [messages[7], messages[8]])
    ]
    
    static let chatsForUser3 = [
        P2PChat(person: persons[4], messages: [messages[0], messages[1], messages[3], messages[4]]),
        P2PChat(person: persons[5], messages: [messages[5], messages[6]]),
    ]
    
    // creating  a map for each person and their chats
    static let chatMap = [
        "Jack" : chatsForUser1,
        "Lily" : chatsForUser2,
        "Josh" : chatsForUser3
    ]
    
    // changing the username to acess the value(chats) of the key(username)
    @Published var chats: [P2PChat] = chatMap["Lily"] ?? [] // took care of optional
    
    // changing the username to update the chat everytime a new user logs in
    func changeUsername(username: String) -> [P2PChat] {
        self.chats = ChatViewModel.chatMap[username] ?? [] // took care of optional
        return chats
    }
    
    // function that allows users to send messages
    func sendMessage(_ text: String, in chat: P2PChat) -> P2PMessage? {
        if let index = chats.firstIndex(where: { $0.id == chat.id}) {
            let message = P2PMessage(text, type: .Sent)
            chats[index].messages.append(message)
            return message
        }
        return nil
    }
}
