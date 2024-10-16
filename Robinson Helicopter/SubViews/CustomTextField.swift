//
//  CustomTextField.swift
//  Robinson Helicopter
//
//  Created by mac on 15/10/2024.
//

import SwiftUI

struct CustomTextField: View {
    
    var hint: String
    var isPassword: Bool = false
    
    @Binding var value: String
    @State private var showPassword: Bool = false
    
    
    var body: some View {
        
        VStack {
            if isPassword {
                
                Group {
                    if showPassword {
                        TextField(hint, text: $value)
                            .textFieldStyle(PlainTextFieldStyle()) // Use PlainTextFieldStyle for no padding
                            .padding(.top,14)
                            .padding(.bottom,14)
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .font(.custom("Inter28pt-Light", size: 14))
                            .background(Color("LightCream")) // Optional: Background color for visibility
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color("DarkCreamV2"), lineWidth: 2) // Custom border color and width
                            )
                    } else {
                        SecureField(hint, text: $value)
                            .textFieldStyle(PlainTextFieldStyle()) // Use PlainTextFieldStyle for no padding
                            .padding(.top,14)
                            .padding(.bottom,14)
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .font(.custom("Inter28pt-Light", size: 14))
                            .background(Color("LightCream")) // Optional: Background color for visibility
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color("DarkCreamV2"), lineWidth: 2) // Custom border color and width
                            )
                    }
                }
                
                
            } else {
                TextField(hint, text: $value)
                    .textFieldStyle(PlainTextFieldStyle()) // Use PlainTextFieldStyle for no padding
                    .autocapitalization(.none)
                    .padding(.top,14)
                    .padding(.bottom,14)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .font(.custom("Inter28pt-Light", size: 14))
                    .background(Color("LightCream")) // Optional: Background color for visibility
                    .cornerRadius(50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color("DarkCreamV2"), lineWidth: 2) // Custom border color and width
                    )
                
            }
        }.overlay (alignment: .trailing) {
            
            if isPassword {
                
                Button(action: {
                    
                    showPassword.toggle()
                    
                }, label: {
                    Image(showPassword ? "eye-off" : "eye")
                        .foregroundStyle(Color("DarkCreamV3"))
                        .padding(10)
                })
            }
        }
        
        
        
        
        
    }
}


