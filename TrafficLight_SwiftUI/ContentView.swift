//
//  ContentView.swift
//  TrafficLight_SwiftUI
//
//  Created by Daniil Auhustsinovich on 12.05.22.
//

import SwiftUI

struct ContentView: View {
    enum CurrentLight {
        case off, red, yellow, green
    }
    
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.off
    
    private func changeColor() {
        
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                TrafficLightView(color: .red, opacity: currentLight == .red ? 1 : 0.5)
                TrafficLightView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.5)
                TrafficLightView(color: .green, opacity: currentLight == .green ? 1 : 0.5)
                
                Spacer()
                TrafficLightButton(title: buttonTitle, action: { if buttonTitle == "START" {
                    buttonTitle = "NEXT"
                }
                    changeColor()
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
