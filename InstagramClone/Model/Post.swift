//
//  Post.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 12/03/24.
//

import Foundation
    
// Identifiable: To display the content in List with SwiftUI
// Hashable: To make the content navigatable
// Codable: To download and upload info to and fro from server.
struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUID: String
    let caption: String
    var likes: Int
    let imgUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "With Bat-girl", likes: 2022, imgUrl: "batman1", timestamp: Date(), user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Your World Is Not So Ugly After All. I'm Almost Sorry To See It End", likes: 1703, imgUrl: "venom3", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "I Don't Wanna Hurt You.", likes: 1098, imgUrl: "loki1", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "I know right? You're probably thinking, 'Whose balls did I have to fondle to get my very own movie'? I can't tell you his name, but it rhymes with 'Polverine", likes: 1098, imgUrl: "deadpool4", timestamp: Date(), user: User.MOCK_USERS[5]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Patience Isn't My Strongest Suit.", likes: 999, imgUrl: "wolverine1", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Just swinging around!", likes: 2567, imgUrl: "spiderman1", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "You should be very, very, very afraid", likes: 2567, imgUrl: "venom1", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Eyes. Lungs. Pancreas. So many snacks, so little time", likes: 2567, imgUrl: "venom2", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Life is an endless series of train wrecks with only brief commercial-like breaks of happiness", likes: 2567, imgUrl: "deadpool1", timestamp: Date(), user: User.MOCK_USERS[5]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Well, I may be super, but I'm no hero", likes: 2567, imgUrl: "deadpool2", timestamp: Date(), user: User.MOCK_USERS[5])
    ]
}
