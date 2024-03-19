//
//  SearchView.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 09/03/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 12){
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            HStack {
                                CircularProfileImageView(user: user, size: .xSmall)
                                
                                VStack (alignment: .leading ){
                                    Text(user.username)
                                        .fontWeight(.semibold)

                                    Text(user.fullname ?? "")
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal )
                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...") // a modifier that allows us to search through any sort of list. Here, our searchText needs to be property so have to define it first. Default prompt : Search
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline )
        }
    }
}

#Preview {
    SearchView()
}
