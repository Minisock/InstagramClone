//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 09/03/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
             // Profile image + username
            HStack {
                 Image("venom")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                
                Text("venom")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            // post image
            Image("venom2")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipShape(Rectangle())
            
            // action buttons for post
            HStack (spacing: 16 ){
                Button {
                    print("Like post")
                } label: {
                     Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share Post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4 )
            .foregroundColor(.black )
            
            // likes label
            
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading )
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // caption label
            
            HStack {
                Text("venom ").fontWeight(.semibold) +
                Text("This is the caption to my new upcomming movie. Get ready for it!")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1 )
            
            Text("6h ago ")
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading )
                .padding(.leading, 10)
                .padding(.top, 1)
        }
    }
}

#Preview {
    FeedCell()
}
