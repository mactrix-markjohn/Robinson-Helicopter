//
//  CustomButton.swift
//  Robinson Helicopter
//
//  Created by mac on 15/10/2024.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var icon: String
    var isIcon: Bool = false
    var backcolor: Color
    var textcolor: Color
    var bordercolor: Color
    var onClick: () -> ()
    
    
    var body: some View {
        
        Button(action: onClick, 
               
               label: {
            
            HStack (spacing: 10) {
                
                if isIcon {
                    Image(icon)
                }
                Text(title)
                
            }
            
        })
        .padding(.vertical,14)
        .padding(.horizontal,20)
        .foregroundStyle(textcolor)
        .font(Font.custom("Inter28pt-SemiBold", size: 14))
        .frame(maxWidth: .infinity) // Make button extend to both ends of the screen
        .background(backcolor)
        .cornerRadius(50)
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(bordercolor, lineWidth: 2) // Custom border color and width
        )
        .buttonStyle(PlainButtonStyle()) // Prevents default button styling that may affect layout
        
        
    }
    
}

#Preview {
    CustomButton(title: "Continue", icon: "google", isIcon: true, backcolor: .blue, textcolor: .black, bordercolor: .red , onClick: {
        
    })
}
