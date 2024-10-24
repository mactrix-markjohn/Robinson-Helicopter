//
//  CustomDropDownTextField.swift
//  Robinson Helicopter
//
//  Created by mac on 24/10/2024.
//

import SwiftUI

struct CustomDropDownTextField: View {
    var hint: String
    
    
    @Binding var value: String
    var heightfield: CGFloat = 40
    var widthfield: CGFloat = .infinity
    
    
    
    var body: some View {
        
        VStack {
            
            TextField(hint, text: $value)
                .textFieldStyle(PlainTextFieldStyle()) // Use PlainTextFieldStyle for no padding
                .autocapitalization(.none)
                .padding(.top,14)
                .padding(.bottom,14)
                .padding(.leading,20)
                .padding(.trailing,20)
                .frame(width: widthfield, height: heightfield)
                .font(.custom("Inter28pt-Light", size: 14))
                .foregroundStyle(Color("DarkCreamV3"))
                .background(Color("LightCream")) // Optional: Background color for visibility
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color("DarkCreamV2"), lineWidth: 2) // Custom border color and width
                )
            
            
        }.overlay (alignment: .trailing) {
            
            Button(action: {
                
                //showPassword.toggle()
                
            }, label: {
                Image("downarrow")
                    .renderingMode(.template)
                    .foregroundStyle(Color("DarkCreamV3"))
                    .padding(20)
            })
            
        }
        
        
        
        
        
    }
    
}

/*#Preview {
 
 CustomDropDownTextField(hint: "Name", isPassword: false, value:$firstname)
 }*/
