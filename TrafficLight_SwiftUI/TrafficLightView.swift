//
//  TrafficLightView.swift
//  TrafficLight_SwiftUI
//
//  Created by Daniil Auhustsinovich on 12.05.22.
//

import SwiftUI

struct TrafficLightView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle().stroke(lineWidth: 5))
            .foregroundColor(.black)
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .red,opacity: 1)
    }
}
