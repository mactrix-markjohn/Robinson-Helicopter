//
//  CustomPopUpButton.swift
//  Robinson Helicopter
//
//  Created by mac on 18/10/2024.
//

import SwiftUI

struct CustomPopUpButton: View {
    
    var title: String = "Remove Account"
    var icon: String = "trash"
    
    var body: some View {
        
        
        Button(action: {},
               
               label: {
            
            HStack (spacing: 10) {
                
                
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color("Black"))
                
                
                Text(title)
                
            }
            
            
        })
        .padding(.vertical,8)
        .padding(.horizontal,8)
        .foregroundStyle(Color("Black"))
        .font(Font.custom("Inter28pt-Regular", size: 12))
        .frame(width: 158)
        .background(Color("LightCream"))
        .cornerRadius(8)
        .buttonStyle(PlainButtonStyle())
        .offset(x: -95, y:0)
    }
}

#Preview {
    CustomPopUpButton()
}
