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
                    
                    // Account name and buttons
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
                                    .frame(width: 16, height: 16)
                                    
                                    
                            })
                            
                        }
                        
                        Spacer()
                        
                        HStack{
                            
                            Button(action: {
                                // action
                            }, label: {
                                Image("sparkles")
                                    .resizable()
                                    .renderingMode(.template) // Set rendering mode to template
                                    .foregroundColor(Color("Blue"))
                                    .frame(width: 24, height: 24)
                                    
                            })
                            
                            Button(action: {
                                // action
                            }, label: {
                                Image("bell")
                                    .resizable()
                                    .renderingMode(.template) // Set rendering mode to template
                                    .foregroundColor(Color("Blue"))
                                    .frame(width: 24, height: 24)
                                    
                            })
                        }
                    }
                    .padding(.bottom,12)
                    
                    
                    
                    
                    // Parts Catalog
                    HStack {
                        
                        Text("PARTS CATALOG")
                            .font(Font.custom("Shapiro-75HeavyText", size: 14))
                            .foregroundStyle(Color("DeepBlue"))
                        
                        Spacer()
                        
                        CustomNoBackButton(title: "Shop Parts", textcolor: Color("Blue"), textSize: 12) {
                            // action
                        }
                        
                       
                        
                    }
                    
                    
                    // Search bar view
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
                    
                    
                    // Blue view for Find a Dealer
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("Blue"))
                            .stroke(Color("White"), lineWidth: 1)
                        
                        HStack (spacing: 12){
                            
                            VStack (alignment: .leading, spacing: 4) {
                                
                                Text("Looking for help?")
                                    .font(Font.custom("Inter28pt-Regular", size: 12))
                                    .foregroundStyle(Color("Cream"))
                                
                                Text("FIND A DEALER OR SERVICE CENTER")
                                    .font(Font.custom("Shapiro-75HeavyText", size: 14))
                                    .foregroundStyle(Color("Cream"))
                                
                            }
                            
                            Button(action: {
                                // action
                            }, label: {
                                Image("cheveron-right")
                                    .resizable()
                                    .renderingMode(.template) // Set rendering mode to template
                                    .foregroundColor(Color("Cream"))
                                    .frame(width: 20, height: 20)
                                
                                    
                            })
                            
                        }
                        
                    }
                    .frame(height: 80)
                    .padding(.vertical,16)
                    
                    // Join our Community
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("LightCream"))
                            .stroke(Color("White"), lineWidth: 1)
                        
                        VStack {
                            
                            HStack {
                                CustomCircleImage(icon: "user-group", iconwidth: 20,iconheight: 20,circlewidth: 44, circleheight: 44)
                                Spacer()
                            }
                            
                            HStack {
                                Text("JOIN OUR COMMUNITY HUB!")
                                    .font(Font.custom("Shapiro-75HeavyText", size: 18))
                                .foregroundStyle(Color("Blue"))
                                Spacer()
                            }
                            .padding(.bottom,1)
                            
                            HStack {
                                Text("Lorem ipsum dolor sit amet consectetur adipiscing elit\n- sed do eiusmod tempor incididunt.")
                                    .font(Font.custom("Inter28pt-Regular", size: 12))
                                .foregroundStyle(Color("Black"))
                                Spacer()
                            }
                                
                            
                            
                            
                            HStack {
                                Button(action: {
                                    // action
                                }, label: {
                                    
                                    HStack (spacing: 4) {
                                        Text("Join")
                                            .font(Font.custom("Inter28pt-SemiBold", size: 14))
                                            .foregroundStyle(Color("Blue"))
                                        Image("cheveron-right")
                                            .resizable()
                                            .renderingMode(.template)
                                            .frame(width: 14, height: 14)
                                            .foregroundColor(Color("Blue"))
                                        
                                    }
                                    
                                       
                                        
                            })
                                Spacer()
                            }
                            .padding(.top,12)
                            
                             
                        }
                        .padding(24)
                            
                    }
                    .frame(height: 203)
                    
                    
                    
                    
                    
                    
                    
                }
                
                
            }.scrollIndicators(.hidden)
                .padding(.horizontal,16)
            
            
        }
    }
}

#Preview {
    HomeView()
}
