//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Максим Евграфов on 09.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var nextButtonText = "Start"
    @State private var activeColor: CurrentLight?
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleView(color: .red, opacity: activeColor == .red ? 1 : 0.3)
                CircleView(color: .yellow, opacity: activeColor == .yellow ? 1 : 0.3)
                CircleView(color: .green, opacity: activeColor == .green ? 1 : 0.3)
                Spacer()
                Button(action: nextButtonDidTapped) {
                    ZStack {
                        Capsule()
                            .frame(width: 100, height: 40)
                        Text(nextButtonText)
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                    }
                }
            }.padding()
        }
    }
    
    private func nextButtonDidTapped() {
        if (activeColor == nil) {
            nextButtonText = "Next"
        }
        switch activeColor {
        case .red:
            activeColor = .yellow
        case .yellow:
            activeColor = .green
        default:
            activeColor = .red
        }
    }
    
    private enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}
