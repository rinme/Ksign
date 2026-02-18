//
//  RainbowGradient.swift
//  Ksign
//
//  Created by Copilot on 18.02.2026.
//

import SwiftUI

struct RainbowGradient: View {
    @State private var animationOffset: CGFloat = 0
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: AccentColorManager.rainbowColors),
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
