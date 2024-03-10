//
//  IGTextFieldModifier.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 10/03/24.
//

import SwiftUI

struct IGTextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
