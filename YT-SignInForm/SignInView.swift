//
//  SignInView.swift
//  YT-SignInForm
//
//  Created by Yaroslav on 28.01.2024.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text("Sign in")
                .font(.largeTitle)
            SignInSocialsStack()
                .frame(height: 40)
                .padding(.vertical, 20)
            Text("or use your email, password")
            textFields
                .padding(.vertical, 10)
            Text("Forget Your Password?")
                .padding(.bottom, 20)
            Button(action: {
                print("Sign in")
            }, label: {
                Text("SIGN IN")
                    .foregroundStyle(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 10)
                    .background {
                        RoundedRectangle(cornerRadius: 15)
                    }
            })
            Spacer()
        }
    }
    
    var textFields: some View {
        VStack(spacing: 20, content: {
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .frame(width: 250, height: 30)
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .frame(width: 250, height: 30)
        })
    }
}


#Preview {
    SignInView()
}
