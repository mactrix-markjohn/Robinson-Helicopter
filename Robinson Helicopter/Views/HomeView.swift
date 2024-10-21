//
//  HomeView.swift
//  Robinson Helicopter
//
//  Created by mac on 14/10/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State var value: String = ""
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    
                    HStack{
                        HStack{
                            
                            ZStack {
                                
                                Circle()
                                    .fill(.lightBlueV2)
                                    .frame(width: 30, height: 30)
                                
                                Text("BS")
                                    .font(Font.custom("Shapiro-75HeavyText", size: 10))
                                    .foregroundStyle(Color("Blue"))
                                
                                
                                
                            }
                            
                            
                            Text("Hi, Ben!")
                                .foregroundStyle(Color("Black"))
                                .font(Font.custom("Inter28pt-SemiBold", size: 14))
                            
                            Button(action: {
                                // action
                            }, label: {
                                
                                Image("cheveron-right")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(Color("Black"))
                                    .frame(width: 16, height: 14)
                                    
                                    
                            })
                            
                        }
                        
                        Spacer()
                        
                        HStack{
                            
                            Button(action: {
                                // action
                            }, label: {
                                Image("sparkles")
                                    .renderingMode(.template) // Set rendering mode to template
                                    .foregroundColor(Color("Blue"))
                                    
                            })
                            
                            Button(action: {
                                // action
                            }, label: {
                                Image("bell")
                                    .renderingMode(.template) // Set rendering mode to template
                                    .foregroundColor(Color("Blue"))
                                    
                            })
                        }
                    }
                    .padding(.bottom,12)
                    
                    
                    
                    
                    
                    HStack {
                        
                        Text("PARTS CATALOG")
                            .font(Font.custom("Shapiro-75HeavyText", size: 14))
                            .foregroundStyle(Color("DeepBlue"))
                        
                        Spacer()
                        
                        CustomNoBackButton(title: "Shop Parts", textcolor: Color("Blue"), textSize: 12) {
                            // action
                        }
                        
                       
                        
                    }
                    
                    
                    
                    ZStack {
                        TextField("Search Parts", text: $value)
                            .textFieldStyle(PlainTextFieldStyle()) // Use PlainTextFieldStyle for no padding
                            .foregroundStyle(Color("DarkCreamV4"))
                            .autocapitalization(.none)
                            .padding(.top,14)
                            .padding(.bottom,14)
                            .padding(.leading,40)
                            .padding(.trailing,20)
                            .frame(height: 40)
                            .font(.custom("Inter28pt-Regular", size: 12))
                            .background(Color("LightCream")) // Optional: Background color for visibility
                        
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color("LightCream"), lineWidth: 2) // Custom border color and width
                            )
                    }
                    .overlay (alignment: .leading) {
                        
                        
                        
                        Button(action: {
                            
                            //showPassword.toggle()
                            
                        }, label: {
                            Image("search")
                                .resizable()
                                .foregroundStyle(Color("DarkCreamV3"))
                                .frame(width: 14, height: 14)
                                .padding(10)
                                .padding(.leading,7)
                        })
                        
                    }
                    
                    
                }
            }.scrollIndicators(.hidden)
                .padding(.horizontal,16)
            
            
        }
    }
}

#Preview {
    HomeView()
}
