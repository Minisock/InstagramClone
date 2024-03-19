//
//  User.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 11/03/24.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable { // here we have defined the protocols to which the user is confined to.
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: nil, fullname: "Eddie Brock", bio: "we will find you and we will eat both of your arms and then both of your legs. And then we will eat your face right off your head.", email: "venom@mcu.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: nil, fullname: "Miles Morales", bio: "With great power comes great responsibility.", email: "spiderman@mcu.com"),
        .init(id: NSUUID().uuidString, username: "loki", profileImageUrl: nil, fullname: "Loki Odinson", bio: "God of Time God of Stories God of Mischief Prince of Asgard King of Asgard Rightful King of Jotunheim", email: "loki@mcu.com"),
        .init(id: NSUUID().uuidString, username: "wolverine", profileImageUrl: nil, fullname: "Logan", bio: "I'm the best there is at what I do, and what I do isn't very nice.", email: "wolverine@mcu.com"),
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "I am vengeance, I am the night, I am Batman!", email: "batman@mcu.com"),
        .init(id: NSUUID().uuidString, username: "deadpool", profileImageUrl: nil, fullname: "Wade Winston Wilson", bio: "Well, I may be super, but I'm no hero", email: "deadpool@mcu.com")
    ]
}
