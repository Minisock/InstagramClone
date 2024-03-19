//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 12/03/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    @State private var showEditProfile = false
    
    var body: some View {
        VStack (spacing: 10){
            // profile pic and stats
            HStack {
                CircularProfileImageView(user: user, size: .large)
            
                Spacer()
                
                HStack {
                    // Refactored the code here.
                    UserStatView(value: 3, title: "Posts")
                    UserStatView(value: 12, title: "Followers")
                    UserStatView(value: 24, title: "Following")
                }
            }
            .padding(.horizontal)
            
            // user-name & bio
            VStack (alignment: .leading, spacing: 4){
                if let fullname = user.fullname {
                    Text(fullname)
                       .font(.footnote)
                       .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
            }
            .padding(.horizontal)
            .frame(width: 400, alignment: .leading)
            
            // edit profile (action button)
            Button {
                if user.isCurrentUser {
                    showEditProfile.toggle()
                }
                else {
                    print("Follow user..")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(6)
                // Defines a RoundedRectangual overlay over the text and then the stroke defines the the boundary of the overlay to be considered with desired (content: , lineWidth:)
                
                    .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1)
                            )
            }
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile, content: {
            EditProfileView(user: user)
        })
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
