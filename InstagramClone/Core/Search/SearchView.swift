//
//  SearchView.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 09/03/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 12){
                    ForEach(0 ... 15, id: \.self) { user in
                        HStack {
                            Image("venom1")
                                .resizable()
                                .scaledToFill()
                                .frame(width:  40, height: 40)
                            .clipShape(.circle)
                            
                            VStack (alignment: .leading ){
                                Text("venom")
                                    .fontWeight(.semibold)
                                
                                Text("Edie Brooke")
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal )
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...") // a modifier that allows us to search through any sort of list. Here, our searchText needs to be property so have to define it first. Default prompt : Search
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline )
        }
    }
}

#Preview {
    SearchView()
}
