//
//  MyAccountView.swift
//  Robinson Helicopter
//
//  Created by mac on 21/10/2024.
//

import SwiftUI

struct MyAccountView: View {
    
    @State var value = ""
    
    
    var body: some View {
        ZStack {
            
            // Main UI
            ZStack {
                Rectangle()
                    .fill(Color("Cream"))
                    .ignoresSafeArea()
                
                MyAccountMainView
                
            }
        }
    }
    
    
    @ViewBuilder
    var MyAccountMainView: some View {
        VStack{
            
            VStack (spacing: 8) {
                
                
                HStack {
                    Text("MY ACCOUNT")
                        .font(Font.custom("Shapiro-75HeavyText", size: 24))
                    .foregroundStyle(Color("Blue"))
                    Spacer()
                }
                
                // Search bar view
                ZStack {
                    TextField("Search", text: $value)
                        .textFieldStyle(PlainTextFieldStyle()) // Use PlainTextFieldStyle for no padding
                        .foregroundStyle(Color("DarkCreamV4"))
                        .autocapitalization(.none)
                        .padding(.top,14)
                        .padding(.bottom,14)
                        .padding(.leading,40)
                        .padding(.trailing,20)
                        .frame(height: 30)
                        .font(.custom("Inter28pt-Regular", size: 12))
                        .background(Color("LightCream")) // Optional: Background color for visibility
                    
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color("LightCream"), lineWidth: 2) // Custom border color and width
                        )
                }
                .overlay (alignment: .leading) {
                    
                    
                    
                    Button(action: {
                        
                        //showPassword.toggle()
                        
                    }, label: {
                        Image("search")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(Color("DarkCreamV4"))
                            .frame(width: 14, height: 14)
                            .padding(10)
                            .padding(.leading,7)
                    })
                    
                }
                .padding(.bottom, 2)
            }
            
            
            CustomTitleBodyButton(title: "Ben Smith", contentbody: "ben.smith@gmail.com", circlecolor: Color("StrangeBlue"),isTextIcon: true, mainicon: "user",titlecolor: Color("Blue"),stackpadding: 0) {
                // action
            }
            
            Rectangle()
                .fill(Color("DarkCreamV2"))
                .frame(height: 1)
                
            
            VStack {
                
                Button(action: {
                    
                }, label: {
                    
                    HStack {
                        
                        Image("shopping bag 2")
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFit()
                            .frame(width: 16.67, height: 16.67)
                            .foregroundColor(Color("Black"))
                        
                    }
                    
                    
                })
            }
            
            Spacer()
            
            
        }
        .padding(16)
    }
}

#Preview {
    MyAccountView()
}
