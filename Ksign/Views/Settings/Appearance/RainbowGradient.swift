//
//  RainbowGradient.swift
//  Ksign
//
//  Created by Copilot on 18.02.2026.
//

import SwiftUI

struct RainbowGradient: View {
    @State private var animationOffset: CGFloat = 0
    
    private let rainbowColors: [Color] = [
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .indigo,
        .purple,
        .red
    ]
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: rainbowColors),
            startPoint: .leading,
            endPoint: .trailing
        )
        .hueRotation(.degrees(animationOffset))
        .onAppear {
            withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: false)) {
                animationOffset = 360
            }
        }
    }
}
