//
//  CardView.swift
//  YT-SignInForm
//
//  Created by Yaroslav on 28.01.2024.
//

import SwiftUI

struct CardView<Content>: View where Content: View {
    @ViewBuilder var content: () -> Content
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .foregroundStyle(.white)
            .overlay {
                content()
                    .clipped()
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .shadow(color: Color(uiColor: .black.withAlphaComponent(0.25)), radius: 15, x: 0, y: 15)
    }
}


#Preview {
    CardView {
        Text("Hello world")
    }
    .padding(.horizontal, 100)
    .padding(.vertical, 150)
}
