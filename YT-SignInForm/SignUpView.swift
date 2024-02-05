//
//  SignUpView.swift
//  YT-SignInForm
//
//  Created by Yaroslav on 28.01.2024.
//

import SwiftUI

struct SignUpView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text("Create account")
                .font(.largeTitle)
            SignInSocialsStack()
                .frame(height: 40)
                .padding(.vertical, 20)
            Text("or use your email  for registration")
            textFields
                .padding(.vertical, 10)
            Button(action: {
                print("SIGN UP")
            }, label: {
                Text("SIGN UP")
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
            TextField("Name", text: $email)
                .textFieldStyle(.roundedBorder)
                .frame(width: 250, height: 30)
            
            
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
    SignUpView()
}

