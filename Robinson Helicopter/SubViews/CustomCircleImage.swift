//
//  CustomCircleImage.swift
//  Robinson Helicopter
//
//  Created by mac on 22/10/2024.
//

import SwiftUI

struct CustomCircleImage: View {
    
    var icon: String
    var iconcolor: Color = Color("Blue")
    var iconwidth: CGFloat = 20
    var iconheight: CGFloat = 20
    
    var circlecolor: Color = Color("White")
    var circlewidth: CGFloat = 44
    var circleheight: CGFloat = 44
    
    
    
    var body: some View {
        
        ZStack {
            // Circle with a white background
            Circle()
                .fill(circlecolor)
                .frame(width: circlewidth, height: circleheight)
            
            // Camera image on top
            Image(icon)
                .resizable()
                .renderingMode(.template)
                .frame(width: iconwidth, height: iconheight)
                .scaledToFit()
                .foregroundColor(iconcolor)
        }
    }
}

#Preview {
    CustomCircleImage(icon: "user-group")
}
