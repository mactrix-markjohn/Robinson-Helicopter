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
                    
                    
                    
                    CustomNoBackButton(title: "Forgot your password?", textcolor: Color("DarkCreamV3")) {
                        //Action here
                    }
                    
                    
                   
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
                
                CustomButton(title: "Continue with Google", icon: "google", isIcon: true, backcolor: Color("LightCream"), textcolor: Color(.black), bordercolor: Color("DarkCreamV2")) {
                    // something should be done
                }
                .padding(.bottom,6)
                
                CustomButton(title: "Continue with Apple", icon: "apple", isIcon: true, backcolor: Color("LightCream"), textcolor: Color(.black), bordercolor: Color("DarkCreamV2")) {
                    // something should be done
                }
                .padding(.bottom,20)
                
                
                HStack {
                    Spacer()
                    
                    Text("Don’t have an account yet?")
                        .font(Font.custom("Inter28pt-Regular", size: 12))
                        .foregroundStyle(Color("DarkCreamV3"))
                    
                    CustomNoBackButton(title: "Sign up", textcolor: Color("DarkCreamV3")) {
                        //Action here
                    }
                    
                    
                    Spacer()
                }
                .padding(.bottom,20)
                
                CustomNoBackButton(title: "Continue as a guest", textcolor: Color("DarkCreamV3")) {
                    //Action here
                }
                .padding(.bottom,20)
                
                VStack {
                    HStack (spacing: 3){
                        Spacer()
                        Text("By logging in you agree to the")
                            .font(Font.custom("Inter28pt-Regular", size: 12))
                            .foregroundStyle(Color("DarkCreamV3"))
                        
                        Text("Terms and Conditions")
                            .font(Font.custom("Inter28pt-SemiBold", size: 12))
                            .foregroundStyle(Color("DarkCreamV3"))
                        
                        Spacer()
                    }
                    
                    HStack (spacing: 3){
                        Spacer()
                        Text("and the use of")
                            .font(Font.custom("Inter28pt-Regular", size: 12))
                            .foregroundStyle(Color("DarkCreamV3"))
                        
                        Text("cookies.")
                            .font(Font.custom("Inter28pt-SemiBold", size: 12))
                            .foregroundStyle(Color("DarkCreamV3"))
                        
                        Spacer()
                        
                    }
                }
                
                
                
                Spacer()
                
            }
            .padding(.top,30)
            .padding(.leading,20)
            .padding(.trailing,20)
        }
    }
}

#Preview {
    LoginView()
}
