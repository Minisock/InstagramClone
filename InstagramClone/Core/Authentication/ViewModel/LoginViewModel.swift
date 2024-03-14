//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 15/03/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(email: email, password: password)
    }
}
