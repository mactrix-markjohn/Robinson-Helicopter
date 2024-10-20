//
//  ForgotPassView.swift
//  Robinson Helicopter
//
//  Created by mac on 14/10/2024.
//

import SwiftUI

struct ForgotPassView: View {
    
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
                    
                    HStack {
                        
                        CustomTabButton(title: "1", backcolor: "DarkCreamV1", textcolor: "Blue") {
                            // action
                        }
                        
                        CustomTabButton(title: "2", backcolor: "White", textcolor: "DarkCreamV3") {
                            // action
                        }
                        
                    }
                }
                .padding(.bottom, 20)
                
                
                // Tab Stack
                
                ZStack {
                    // Tab 1
                    ForgotPasswordView
                    //CheckYourEmailView
                    
                    
                    // Tab 2
                    //WriteNewPasswordView
                }
                
                
                
                
                Spacer()
                
            }
            .padding(.top,30)
            .padding(.leading,20)
            .padding(.trailing,20)
        }
    }
    
    
    @ViewBuilder
    var ForgotPasswordView: some View {
        
        VStack{
            
            HStack {
                Text("FORGOT YOUR PASSWORD?")
                    .font(Font.custom("Shapiro-75HeavyText", size: 18))
                    .foregroundStyle(Color("Blue"))
                
                
                Spacer()
            }
            .padding(.bottom,-5)
            
            
            HStack {
                Text("Enter your email address and we will send you an email to reset your password.")
                    .font(Font.custom("Inter28pt-Regular", size: 12))
                    .foregroundStyle(Color("Black"))
                
                Spacer()
            }.frame(height: 40)
                .padding(.bottom,10)
            
            
            
            // Login Form
            
            
            VStack(spacing: 20) {
                
                CustomTextField(hint: "Email", isPassword: false, value: $email)
                //                    CustomTextField(hint: "Password", isPassword: true, value: $password)
                CustomButton(title: "Continue with email", icon: "", isIcon: false, backcolor: Color("StrangeBlue"), textcolor: Color("LightBlue"), bordercolor: Color("StrangeBlue")) {
                    // something should be done
                }
                
                
                
                CustomNoBackButton(title: "Back to Log In", textcolor: Color("DarkCreamV3")) {
                    //Action here
                }
                
                
                
            } // Padding around the VStack
            .padding(.bottom, 30)
            .background(Color.clear) // Set the background to clear if needed
            
        }
    }
    
    
    @ViewBuilder
    var CheckYourEmailView: some View {
        VStack{
            
            HStack {
                Text("CHECK YOUR EMAIL")
                    .font(Font.custom("Shapiro-75HeavyText", size: 18))
                    .foregroundStyle(Color("Blue"))
                
                
                Spacer()
            }
            .padding(.bottom,-14)
            
            
            HStack {
                Text("We sent you an email with a link to reset your password.")
                    .font(Font.custom("Inter28pt-Regular", size: 12))
                    .foregroundStyle(Color("Black"))
                
                Spacer()
            }.frame(height: 40)
                .padding(.bottom,10)
            
            
            CustomNoBackButton(title: "Resend email", textcolor: Color("DarkCreamV3")) {
                //Action here
            }
            
        }
    }
    
    
    @ViewBuilder
    var WriteNewPasswordView: some View {
        
        VStack{
            
            HStack {
                Text("WRITE YOUR NEW PASSWORD")
                    .font(Font.custom("Shapiro-75HeavyText", size: 18))
                    .foregroundStyle(Color("Blue"))
                
                
                Spacer()
            }
            .padding(.bottom,10)
            
            
            
            // Login Form
            
            
            VStack(spacing: 15) {
                
                //CustomTextField(hint: "Email", isPassword: false, value: $email)
                //                    CustomTextField(hint: "Password", isPassword: true, value: $password)
                CustomTextField(hint: "Password", isPassword: true, value: $password)
                
                CustomTextField(hint: "Comfirm password", isPassword: true, value: $password)
                
                CustomButton(title: "Continue with email", icon: "", isIcon: false, backcolor: Color("StrangeBlue"), textcolor: Color("LightBlue"), bordercolor: Color("StrangeBlue")) {
                    // something should be done
                }
                .padding(.bottom,25)
                
                
                CustomNoBackButton(title: "Back to Log In", textcolor: Color("DarkCreamV3")) {
                    //Action here
                }
                
                
                
            } // Padding around the VStack
            .padding(.bottom, 30)
            .background(Color.clear) // Set the background to clear if needed
            
        }
    }
}

#Preview {
    ForgotPassView()
}
