//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Amarjeet Kumar on 08/03/24.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(width: 84 )
    }
}

#Preview {
    UserStatView(value: 12, title: "Posts")
}
