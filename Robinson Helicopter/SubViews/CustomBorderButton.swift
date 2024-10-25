//
//  CustomBorderButton.swift
//  Robinson Helicopter
//
//  Created by mac on 25/10/2024.
//

import SwiftUI

struct CustomBorderButton: View {
    var title: String
    var icon: String
    var isIcon: Bool = false
    var iconcolor: Color = Color("NeutralColor")
    var backcolor: Color
    var textcolor: Color
    var bordercolor: Color
    var widthBtn: CGFloat = 69
    var heightBtn: CGFloat = 28
    var onClick: () -> ()
    
    
    var body: some View {
        
        Button(action: onClick,
               
               label: {
            
            HStack {
                
                if isIcon {
                    Image(icon)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(iconcolor)
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                    
                } else{
                    Text(title)
                }
                
                
            }
            .padding(.horizontal,12)
            
        })
        .foregroundStyle(textcolor)
        .font(Font.custom("Inter28pt-SemiBold", size: 12))
        .frame(width: widthBtn,height: heightBtn)
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
    CustomBorderButton(title: "Dealers", icon: "google", isIcon: false, backcolor: Color("Cream"), textcolor: .black, bordercolor: Color("DarkCreamV2"), widthBtn: 69, heightBtn: 28 , onClick: {
        
    })}
