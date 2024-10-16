//
//  LoginView.swift
//  Robinson Helicopter
//
//  Created by mac on 14/10/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @State var errorMessage = ""
    
    
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Image("svgLogoOnly")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Spacer()
                }
                .padding(.bottom, 20)
                
                
                
                HStack {
                    Text("LOG IN")
                        .font(Font.custom("Shapiro-75HeavyText", size: 24))
                        .foregroundStyle(Color("Blue"))
                    
                    Spacer()
                }
                
                
                // Login Form
                
                
                VStack(spacing: 20) {
                    
                    CustomTextField(hint: "Email", isPassword: false, value: $email)
                    CustomTextField(hint: "Password", isPassword: true, value: $password)
                    CustomButton(title: "Continue with email", icon: "", isIcon: false, backcolor: Color("StrangeBlue"), textcolor: Color("LightBlue"), bordercolor: Color("StrangeBlue")) {
                        // something should be done
                    }
                    
                    Button("Forgot your password?"){
                        // action
                    }
                    .foregroundStyle(Color("DarkCreamV3"))
                    
                    
                   
                } // Padding around the VStack
                .padding(.bottom, 30)
                .background(Color.clear) // Set the background to clear if needed
                
                
                HStack {
                    
                    Image("line4or")
                        .resizable()
                        .scaledToFit()
                    
                    Text("or")
                        .foregroundStyle(Color("DarkCreamV3"))
                        .padding(.horizontal,5)
                    
                    
                    Image("line4or")
                        .resizable()
                        .scaledToFit()
                    
                }
                .padding(.bottom, 30)
                
                CustomButton(title: "Continue with email", icon: "", isIcon: false, backcolor: Color("StrangeBlue"), textcolor: Color("LightBlue"), bordercolor: Color("StrangeBlue")) {
                    // something should be done
                }
                
                CustomButton(title: "Continue with email", icon: "", isIcon: false, backcolor: Color("StrangeBlue"), textcolor: Color("LightBlue"), bordercolor: Color("StrangeBlue")) {
                    // something should be done
                }
                
                
                
                
                Spacer()
                
            }
            .padding(.top,50)
            .padding(.leading,20)
            .padding(.trailing,20)
        }
    }
}

#Preview {
    LoginView()
}
