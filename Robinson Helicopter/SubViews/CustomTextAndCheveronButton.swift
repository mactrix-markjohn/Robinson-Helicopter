//
//  CustomTextAndCheveronButton.swift
//  Robinson Helicopter
//
//  Created by mac on 22/10/2024.
//

import SwiftUI

struct CustomTextAndCheveronButton: View {
    
    var backcolor: Color
    var bordercolor: Color
    var subheading: String
    var subtextcolor: Color
    var heading: String
    var headtextcolor: Color
    var iconcolor: Color
    var onClick: () -> ()
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 8)
                .fill(backcolor)
                .stroke(bordercolor, lineWidth: 1)
            
            HStack (spacing: 12){
                
                VStack (spacing: 4) {
                    
                    HStack {
                        Text(subheading)
                            .font(Font.custom("Inter28pt-Regular", size: 12))
                        .foregroundStyle(subtextcolor)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(heading)
                            .font(Font.custom("Shapiro-75HeavyText", size: 14))
                        .foregroundStyle(headtextcolor)
                        
                        Spacer()
                    }
                    
                }
                
                Button(action: onClick, label: {
                    Image("cheveron-right")
                        .resizable()
                        .renderingMode(.template) // Set rendering mode to template
                        .foregroundColor(iconcolor)
                        .frame(width: 20, height: 20)
                    
                        
                })
                
            }
            .padding(.horizontal,24)
            
        }
        .frame(height: 80)
        
        
        
        
        
    }
}

#Preview {
    CustomTextAndCheveronButton(backcolor: Color("Blue"), bordercolor: Color("White"), subheading: "Looking for help?", subtextcolor: Color("Cream"), heading: "FIND A DEALER OR SERVICE CENTER", headtextcolor: Color("Cream"), iconcolor: Color("Cream")) {
        // action
    }
}
