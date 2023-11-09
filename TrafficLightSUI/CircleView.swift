//
//  CircleView.swift
//  TrafficLightSUI
//
//  Created by Максим Евграфов on 09.11.2023.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(lineWidth: 4)).foregroundStyle(.white)
            .padding(.bottom, 15)
    }
}

#Preview {
    CircleView(color: .red, opacity: 0.5)
}
