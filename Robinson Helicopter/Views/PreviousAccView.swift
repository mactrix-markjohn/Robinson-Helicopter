//
//  PreviousAccView.swift
//  Robinson Helicopter
//
//  Created by mac on 14/10/2024.
//

import SwiftUI

struct PreviousAccView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // action
                    }, label: {
                        Image("dots-vertical")
                            .resizable()
                            .frame(width: 15.5, height: 15.5)
                            .scaledToFit()
                    })
                    .overlay {
                        
                        CustomPopUpButton(title: "Remove account", icon: "trash")
                        
                    }
                    
                    
                }
                .padding(.bottom,100)
                
                Image("svgLogoOnly")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding(.bottom,10)
                
                Text("CHOOSE AN ACCOUNT TO LOG IN")
                    .font(Font.custom("Shapiro-75HeavyText", size: 18))
                    .foregroundStyle(Color("Blue"))
                
                VStack {
                    Image("fillline")
                    
                    
                    VStack {
                        CustomTitleBodyButton(title: "Ben Smith", contentbody: "ben.smith@gmail.com", mainicon: "user",stackpadding: 50) {
                            // action
                        }
                        
                        CustomTitleBodyButton(title: "Ben Smith", contentbody: "ben.smith@gmail.com", mainicon: "user",stackpadding: 50) {
                            // action
                        }
                    }.padding(.vertical,20)
                    
                    
                    
                   /* List(videos) { v in
                        //Text(v.snippet?.title ?? "Tittle")
                        VideoRowView(video: v)
                            .onTapGesture {
                                selectedVideo = v
                            }
                            .listRowSeparator(.hidden)
                    }
                    .listStyle(.plain)
                    .scrollIndicators(.hidden)
                    .padding(.horizontal)*/
                    
                    Image("fillline")
                }
                .padding(.bottom,40)
                
                VStack {
                    HStack (spacing: 3){
                        Spacer()
                        Text("If you don’t see the account you want to ")
                            .font(Font.custom("Inter28pt-Regular", size: 12))
                            .foregroundStyle(Color("DarkCreamV3"))
                        
                        /*Text("Terms and Conditions")
                            .font(Font.custom("Inter28pt-SemiBold", size: 12))
                            .foregroundStyle(Color("DarkCreamV3"))*/
                        
                        Spacer()
                    }
                    
                    HStack (spacing: 3){
                        Spacer()
                        Text("use, you can ")
                            .font(Font.custom("Inter28pt-Regular", size: 12))
                            .foregroundStyle(Color("DarkCreamV3"))
                        
                        CustomNoBackButton(title: "login with another one.", textcolor: Color("DarkCreamV3")) {
                            //Action here
                        }
                        
                        Spacer()
                        
                    }
                }
                .padding(.bottom,40)
                
                
                HStack (spacing: 3){
                    Spacer()
                    Text("or")
                        .font(Font.custom("Inter28pt-Regular", size: 12))
                        .foregroundStyle(Color("DarkCreamV3"))
                    
                    CustomNoBackButton(title: "sign up.", textcolor: Color("DarkCreamV3")) {
                        //Action here
                    }
                    
                    Spacer()
                    
                }
                .padding(.bottom,50)
                
                Button(action: {
                    
                }, label: {
                    Image("bluexbutton")
                })
                
                
                Spacer()
                
            }
            .padding(.top,30)
            .padding(.leading,20)
            .padding(.trailing,20)
        }
    }
}

#Preview {
    PreviousAccView()
}
