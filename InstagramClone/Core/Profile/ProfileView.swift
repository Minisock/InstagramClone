//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 07/03/24.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    private let imagesArray : [String] = [
        "deadpool1",
        "deadpool2",
        "deadpool3"
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                VStack (spacing: 10){
                    // profile pic and stats
                    HStack {
                        Image("deadpool")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(.circle)
                    
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
                         Text("Logan")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("A mutant with adamantium metal claws, an unstoppable healing power, and a no-nonsense attitude.\n Associated with the X-Men.")
                            .font(.footnote)
                    }
                    .frame(width: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // edit profile (action button)
                    Button {
                        // action
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                        // Defines a RoundedRectangual overlay over the text and then the stroke defines the the boundary of the overlay to be considered with desired (content: , lineWidth:)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    Divider()
                }
                
                // posts (in grid view)
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("\(imagesArray[index%3])")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // action
                    } label: {
                         Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
