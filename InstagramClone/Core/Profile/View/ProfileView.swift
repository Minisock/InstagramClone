//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 07/03/24.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var post: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                
                // posts (in grid view)
                PostGridView(posts: post)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
