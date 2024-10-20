//
//  CustomButtonWithFrame.swift
//  Robinson Helicopter
//
//  Created by mac on 20/10/2024.
//

import SwiftUI

struct CustomButtonWithFrame: View {
    var title: String
    var icon: String
    var isIcon: Bool = false
    var backcolor: Color
    var textcolor: Color
    var bordercolor: Color
    var widthbtn: CGFloat
    var heightbtn: CGFloat
    var onClick: () -> ()
    
    
    var body: some View {
        
        Button(action: onClick,
               
               label: {
            
            HStack (spacing: 10) {
                
                if isIcon {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                }
                Text(title)
                
            }
            
        })
        .padding(.vertical,14)
        .padding(.horizontal,20)
        .foregroundStyle(textcolor)
        .font(Font.custom("Inter28pt-SemiBold", size: 14))
        .frame(width:widthbtn, height: heightbtn) // Make button extend to both ends of the screen
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
    CustomButtonWithFrame(title: "Continue", icon: "google", isIcon: true, backcolor: .blue, textcolor: .black, bordercolor: .red ,widthbtn: 200,heightbtn: 50, onClick: {
        
    })
}
