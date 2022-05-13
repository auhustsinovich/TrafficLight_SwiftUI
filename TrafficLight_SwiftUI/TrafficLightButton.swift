//
//  TrafficLightButton.swift
//  TrafficLight_SwiftUI
//
//  Created by Daniil Auhustsinovich on 13.05.22.
//

import SwiftUI

struct TrafficLightButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text("\(title)")
                .foregroundColor(.white)
                .font(.system(size: 50, weight: Font.Weight.medium))
                .frame(width: 200, height: 70)
                .background(.blue)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .stroke(Color.white, lineWidth: 3)
                )
            
                .padding(.bottom,20)
        })
    }
}

struct TrafficLightButton_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightButton(title: "START" , action: {})
    }
}
