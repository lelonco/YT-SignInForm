//
//  SignInSocialsStack.swift
//  YT-SignInForm
//
//  Created by Yaroslav on 28.01.2024.
//

import SwiftUI

struct SignInSocialsStack: View {
    var body: some View {
        HStack {
            SocialButton(image: .apple,
                         action: { })
            
            SocialButton(image: .google,
                         action: { })
            
            SocialButton(image: .linkedinIn,
                         action: { })
            
            SocialButton(image: .github,
                         action: { })
        }
    }
}

#Preview {
    SignInSocialsStack()
        .frame(height: 40)
}
