//
//  CustomPermissionButtons.swift
//  Robinson Helicopter
//
//  Created by mac on 17/10/2024.
//

import SwiftUI

struct CustomTitleBodyButton: View {
    var title: String
    var contentbody: String
    
    var mainicon: String
    var mainiconcolor: Color = Color("Blue")
    
    var endicon: String = "cheveron-right"
    
    var backcolor: Color = Color("LightCream")
    
    var isBackActive: Bool = false
    var checkstate: Int = -1
    
    var titlecolor: Color = Color("Black")
    var contentcolor: Color = Color("LightGrey")
    
    var endiconcolor: Color = Color("Black")
    
    var stackpadding: CGFloat = 0
    
    var frameheight: CGFloat = 60
    
    var onClick: () -> ()
    
    var body: some View {
        
        
        Button(action: onClick, label: {
            ZStack {
                
                if isBackActive {
                    Rectangle()
                        .fill(backcolor)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                
                
                HStack {
                    
                    ZStack {
                        // Circle with a white background
                        Circle()
                            .fill(Color.white)
                            .frame(width: 40, height: 40)
                        
                        // Camera image on top
                        Image(mainicon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16.67, height: 16.67)
                            .foregroundColor(mainiconcolor)
                        
                        // Check state
                        
                        if checkstate == 1{
                            
                            Image("bluecheck") // Use SF Symbol for checkmark
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14, height: 14) // Adjust size as needed
                                .offset(x: 15, y: 12) // Adjust these values to position it
                            
                        }else if checkstate == 0{
                            
                            Image("greyx") // Use SF Symbol for checkmark
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14, height: 14) // Adjust size as needed
                                .offset(x: 15, y: 12) // Adjust these values to position it
                            
                        }
                        
                        
                        
                    }
                    
                    
                    
                    VStack (alignment: .leading,spacing: 3) {
                        Text(title)
                            .font(Font.custom("Inter28pt-SemiBold", size: 12))
                            .foregroundStyle(titlecolor)
                        Text(contentbody)
                            .font(Font.custom("Inter28pt-Regular", size: 10))
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(contentcolor)
                    }
                    
                    Spacer()
                    
                    Image(endicon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(endiconcolor)
                    
                    
                    
                }
                .padding(.horizontal,stackpadding)
            }
            .frame(height: frameheight)
        })
        
    }
}

//#Preview {
//    CustomTitleBodyButton()
//}
