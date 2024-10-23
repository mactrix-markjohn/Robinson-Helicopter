//
//  CustomToggleStyle.swift
//  Robinson Helicopter
//
//  Created by mac on 23/10/2024.
//

import Foundation
import SwiftUI


// Define a custom toggle style
struct CustomToggleStyle: ToggleStyle {
    var offColor: Color
    var onColor: Color
    var thumbColor: Color

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            RoundedRectangle(cornerRadius: 16)
                .fill(configuration.isOn ? onColor : offColor)
                .frame(width: 36, height: 20) // Adjust size here
                .overlay(
                    Circle()
                        .fill(thumbColor)
                        .padding(2)
                        .offset(x: configuration.isOn ? 10 : -10) // Moves thumb based on state
                )
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
        .animation(.easeInOut, value: configuration.isOn)
    }
}

