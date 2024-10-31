//
//  MyFleetItem.swift
//  Robinson Helicopter
//
//  Created by mac on 29/10/2024.
//

import SwiftUI

struct MyFleetItem: View {
    
    var heliimage: String = "heliplaceholder"
    var title: String = "R66 Turbine Marine"
    var subtitle1: String = "D89 - T56 - H64"
    var subtitle2: String = "N788AJ"
    
    
    var body: some View {
        
        
        ZStack {
            
            /*RoundedRectangle(cornerRadius: 8)
                .fill(Color("Cream"))
                .stroke(Color("White"), lineWidth: 1)
                .shadow(color: Color(white: 0,opacity:0.04),radius: 8)*/
            
            VStack {
                
                
                HStack (spacing: 0) {
                    
                    Image(heliimage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 116)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    
                    
                    
                    HStack {
                        
                        VStack (alignment: .leading) {
                            
                            VStack (alignment: .leading) {
                                
                                Text(title)
                                    .font(Font.custom(StringHolder.FontInter28ptSemiBold, size: 16))
                                    .foregroundStyle(Color("Black"))
                                
                                Text(subtitle1)
                                    .font(Font.custom(StringHolder.FontInter28ptLight, size: 12))
                                    .foregroundStyle(Color("Black"))
                                
                                Text(subtitle2)
                                    .font(Font.custom(StringHolder.FontInter28ptLight, size: 12))
                                    .foregroundStyle(Color("Black"))
                                
                            }
                            
                            
                            HStack {
                                
                                Button(action: {
                                    // action
                                }, label: {
                                    
                                    
                                    HStack {
                                        
                                        Text("Document")
                                            .font(Font.custom(StringHolder.FontInter28ptSemiBold, size: 14))
                                            .foregroundStyle(Color("Blue"))
                                        
                                        Image("cheveron-right")
                                            .resizable()
                                            .renderingMode(.template) // Set rendering mode to template
                                            .foregroundColor(Color("Blue"))
                                        .frame(width: 14, height: 14)
                                    }
                                    
                                })
                                
                                Spacer()
                            }
                            
                            Spacer()
                            
                        }
                        
                        
                        VStack {
                            Button(action: {
                                // action
                            }, label: {
                                Image("dots-vertical")
                                    .resizable()
                                    .renderingMode(.template) // Set rendering mode to template
                                    .foregroundColor(Color("Blue"))
                                    .frame(width: 20, height: 20)
                                
                            })
                            
                            Spacer()
                        }
                        
                    }
                    .frame(width: .infinity)
                    .padding(.vertical,12)
                    
                    Spacer()
                }.frame(height: 116)
                
                
                // The Safety Alert
                ZStack {
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("LightCream"))
                            
                            .shadow(color: Color(white: 0,opacity:0.05),radius: 8)
                        
                        HStack {
                            
                            Image("safetyavatar")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                            
                            VStack (alignment: .leading) {
                                Text("Safety Alert")
                                    .font(Font.custom(StringHolder.FontInter28ptSemiBold, size: 12))
                                    .foregroundStyle(Color("Blue"))
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor.")
                                    .font(Font.custom(StringHolder.FontInter28ptRegular, size: 10))
                                    .foregroundStyle(Color("LightGrey"))
                                
                            }
                            .padding(.trailing,10)
                            
                            Spacer()
                            
                            Image("cheveron-right")
                                .resizable()
                                .renderingMode(.template) // Set rendering mode to template
                                .foregroundColor(Color("Blue"))
                            .frame(width: 14, height: 14)
                            
                        }
                        .padding(.horizontal,10)
                        
                    }
                    .frame(height: 68)
                
                }.padding(.horizontal, 8)
                    .padding(.bottom,8)
                
            }
            
        }
        .background(Color("Cream"))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(content: {
            RoundedRectangle(cornerRadius: 8)
                
                .stroke(Color("White"), lineWidth: 1)
                .shadow(color: Color(white: 0,opacity:0.04),radius: 8)
        })
        
        
        
    }
    
    
}

#Preview {
    MyFleetItem()
}
