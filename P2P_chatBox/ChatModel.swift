//
//  ChatModel.swift
//  P2P_chatBox
//
//  Created by Sunny Baek & Wendy Xu on 6/22/23.
//

import Foundation

struct P2PChat: Identifiable {
    var id: UUID { person.id } // assigning ID to each user
    let person: P2PPerson // assigning person to struct Person
    var messages: [P2PMessage] // assigning messages to an Array of messages
}

struct P2PPerson: Identifiable {
    let id = UUID() // getting the unique ID
    let name: String // name of the person
}

struct P2PMessage: Identifiable {
    
    enum MessageType{ // identifying if the messages was sent or received
        case Sent, Received
    }
    
    // assigning new id, date, text, and type every new message is generated
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    // initalizing the data of message
    init(_ text: String, type: MessageType, date: Date) {
        self.date = date
        self.type = type
        self.text = text
    }
    
    // initalizing the TODO: ???
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
}
