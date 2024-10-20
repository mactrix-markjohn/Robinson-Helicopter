//
//  EnableAccessView.swift
//  Robinson Helicopter
//
//  Created by mac on 14/10/2024.
//

import SwiftUI

struct EnableAccessView: View {
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
                    Text("ENABLE ACCESS")
                        .font(Font.custom("Shapiro-75HeavyText", size: 24))
                        .foregroundStyle(Color("Blue"))
                    
                    Spacer()
                }
                
                HStack {
                    Text("For a better experience in the app, please allow the following permissions.")
                        .font(Font.custom("Inter28pt-Regular", size: 14))
                        .foregroundStyle(Color("Black"))
                    
                    Spacer()
                }
                .padding(.bottom,50)
                
                
                
                VStack {
                    
                    // TitleBodyButton
                    
                    
                    
                    CustomTitleBodyButton(title: "Camera Access", contentbody: "Use your camera for the AR Experience in the Robinson Configurator", mainicon: "camera", checkstate: -1) {
                        // action
                    }
                    
                    CustomTitleBodyButton(title: "Notifications Access", contentbody: "We would like to send you notifications to keep you up to date to all of our updates.", mainicon: "bell") {
                        // action
                    }
                    
                    CustomTitleBodyButton(title: "Location Access", contentbody: "We would like to use your location to track nearby distances with Dealers.", mainicon: "location-marker") {
                        // action
                    }
                    
                    
                    
                }
                
                
                
                
                Spacer()
                CustomButton(title: "Continue", icon: "", isIcon: false, backcolor: Color("StrangeBlue"), textcolor: Color("LightBlue"), bordercolor: Color("StrangeBlue")) {
                    // something should be done
                }
                
            }
            .padding(.top,70)
            .padding(.leading,20)
            .padding(.trailing,20)
        }
    }
    
}

#Preview {
    EnableAccessView()
}
