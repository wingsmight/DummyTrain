//
//  RoundedRectangleButtonStyle.swift
//  DummyTrain
//
//  Created by Igoryok on 13.10.2022.
//

import SwiftUI

struct RoundedRectangleButtonStyle: ButtonStyle {
    var color: Color
    var cornerRadius: CGFloat = 8
    
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            configuration.label.foregroundColor(.black)
            Spacer()
        }
        .padding()
        .background(color.cornerRadius(cornerRadius))
        .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}
