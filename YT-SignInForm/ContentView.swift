//
//  ContentView.swift
//  YT-SignInForm
//
//  Created by Yaroslav on 28.01.2024.
//

import SwiftUI

extension UIColor {
    convenience init(hex: UInt, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex >> 16) & 0xFF) / 255.0
        let green = CGFloat((hex >> 8) & 0xFF) / 255.0
        let blue = CGFloat(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

struct ToggleText: View {
    var header: String
    var bodyText: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text(header)
                .font(.largeTitle)
            Text(bodyText)
                .multilineTextAlignment(.center)
        }
        .foregroundStyle(.white)
    }
}

struct ContentView: View {
    @State var isSignUpEnabled = false
    
    var toggleBody: String {
        if isSignUpEnabled {
            "Register with your personal details to use all of site features"
        } else {
            "Enter your personal details to use all of site features"
        }
    }
    var toggleHeader: String {
        isSignUpEnabled ? "Hello, Friend!" : "Welcome Back!"
    }
    var body: some View {
        
        CardView {
            ZStack {
                HStack {
                    Spacer()
                    SignInView()
                    Spacer()
                    SignUpView()
                    Spacer()
                }
                ToggleView(isSignUpEnabled: $isSignUpEnabled) {
                    VStack {
                        ToggleText(header: toggleHeader,
                                   bodyText: toggleBody)
                        .padding()
                        Button(action: {
                            withAnimation {
                                isSignUpEnabled.toggle()
                            }
                        }, label: {
                            Text(isSignUpEnabled ?  "Sign up" : "Sign in")
                                .foregroundStyle(.white)
                        })
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.white, lineWidth: 1)
                        }
                        
                    }
                }
            }
        }
        .padding(.horizontal, 100)
        .padding(.vertical, 150)
        .background {
            LinearGradient(colors: [
            Color(uiColor: UIColor(hex: 0xe2e2e2)),
            Color(uiColor: UIColor(hex: 0xc9d6ff))
            ],
                           startPoint: .leading,
                           endPoint: .trailing)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
