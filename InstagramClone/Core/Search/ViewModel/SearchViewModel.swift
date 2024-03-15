//
//  SearchViewModel.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 16/03/24.
//

import Foundation
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init () {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws{
        self.users = try await UserService.fetchAllUsers()
    }
}
