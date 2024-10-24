//
//  NotificationSettingsView.swift
//  Robinson Helicopter
//
//  Created by mac on 24/10/2024.
//

import SwiftUI

struct NotificationSettingsView: View {
    @State var isOn: Bool = true
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        // action
                    }, label: {
                        Image("cheveron-left")
                            .resizable()
                            .renderingMode(.template) // Set rendering mode to template
                            .foregroundColor(Color("Blue"))
                            .frame(width: 20, height: 20)
                        
                    })
                    
                    
                    
                    Spacer()
                    
                    Text("Notification Settings")
                        .font(Font.custom("Inter28pt-Regular", size: 14))
                        .foregroundStyle(Color("Black"))
                    
                    Spacer()
                    
                    
                   /* HStack {
                        
                        Button(action: {
                            // action
                        }, label: {
                            Image("settings")
                                .resizable()
                                .renderingMode(.template) // Set rendering mode to template
                                .foregroundColor(Color("Black"))
                                .frame(width: 20, height: 20)
                            
                        })
                    }*/
                }
                .padding(.bottom,30)
                
                
                VStack {
                    
                    
                    
                    Toggle("Enable Feature", isOn: $isOn)
                                .toggleStyle(CustomToggleStyle(
                                    offColor: Color("DarkCreamV1"), // Custom off state color
                                    onColor: Color("Blue"), // Change this to your desired on state color
                                    thumbColor: .white // Thumb color
                                ))
                    
                                .font(Font.custom("Inter28pt-Regular", size: 14))
                                .foregroundStyle(Color("Black"))
                    Toggle("Safety Alerts", isOn: $isOn)
                                .toggleStyle(CustomToggleStyle(
                                    offColor: Color("DarkCreamV1"), // Custom off state color
                                    onColor: Color("Blue"), // Change this to your desired on state color
                                    thumbColor: .white // Thumb color
                                ))
                    
                                .font(Font.custom("Inter28pt-Regular", size: 14))
                                .foregroundStyle(Color("Black"))
                    
                    Toggle("Document Updates", isOn: $isOn)
                                .toggleStyle(CustomToggleStyle(
                                    offColor: Color("DarkCreamV1"), // Custom off state color
                                    onColor: Color("Blue"), // Change this to your desired on state color
                                    thumbColor: .white // Thumb color
                                ))
                    
                                .font(Font.custom("Inter28pt-Regular", size: 14))
                                .foregroundStyle(Color("Black"))
                    
                    Toggle("Helicopter Updates", isOn: $isOn)
                                .toggleStyle(CustomToggleStyle(
                                    offColor: Color("DarkCreamV1"), // Custom off state color
                                    onColor: Color("Blue"), // Change this to your desired on state color
                                    thumbColor: .white // Thumb color
                                ))
                    
                                .font(Font.custom("Inter28pt-Regular", size: 14))
                                .foregroundStyle(Color("Black"))
                    
                    Toggle("General Updates", isOn: $isOn)
                                .toggleStyle(CustomToggleStyle(
                                    offColor: Color("DarkCreamV1"), // Custom off state color
                                    onColor: Color("Blue"), // Change this to your desired on state color
                                    thumbColor: .white // Thumb color
                                ))
                    
                                .font(Font.custom("Inter28pt-Regular", size: 14))
                                .foregroundStyle(Color("Black"))
                  
                    
                    
                }
                
                
                
                
                Spacer()
                
            }
            .padding(.horizontal,20)
            
        }
    }
}

#Preview {
    NotificationSettingsView()
}
