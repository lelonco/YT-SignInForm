//
//  SocialButton.swift
//  YT-SignInForm
//
//  Created by Yaroslav on 28.01.2024.
//

import SwiftUI

struct SocialButton: View {
    var image: ImageResource
    var action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        })
        .padding(5)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(lineWidth: 1.0)
        }
    }
}

#Preview {
    SocialButton(image: .apple, action: {
        
    })
    .frame(width: 40, height: 40)
}
