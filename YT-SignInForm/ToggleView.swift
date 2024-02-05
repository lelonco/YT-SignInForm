//
//  ToggleView.swift
//  YT-SignInForm
//
//  Created by Yaroslav on 28.01.2024.
//

import SwiftUI


struct ToggleView<Content>: View where Content: View {
    @Binding var isSignUpEnabled: Bool
    @ViewBuilder var content: () -> Content
    var multiply: CGFloat {
        isSignUpEnabled ? 0.5 : -0.5
    }
    
    var contentMultiply: CGFloat {
        isSignUpEnabled ? 0.25 : -0.25

    }
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: isSignUpEnabled ? 150 : 0,
                                       bottomLeadingRadius: isSignUpEnabled ? 150 : 0,
                                       bottomTrailingRadius: isSignUpEnabled ? 0 : 150,
                                       topTrailingRadius: isSignUpEnabled ? 0 : 150,
                                       style: .continuous)
                .offset(x: geometry.size.width * multiply , y: 0)
                .foregroundStyle(
                    .linearGradient(colors: [
                        Color(uiColor: UIColor(hex: 0x5c6bc0)),
                        Color(uiColor: UIColor(hex: 0x512da8))
                    ],
                                    startPoint: .leading,
                                    endPoint: .trailing)
                )
                content()
                    .frame(width: geometry.size.width * 0.5)
                    .offset(x: geometry.size.width * contentMultiply, y: 0)

            }

        })
    }
}


#Preview {
    @State var bind = false
    return ToggleView(isSignUpEnabled: $bind) {
        Text("Hello World")
    }
}
