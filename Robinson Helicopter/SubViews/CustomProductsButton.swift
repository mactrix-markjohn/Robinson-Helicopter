//
//  CustomProductsButton.swift
//  Robinson Helicopter
//
//  Created by mac on 22/10/2024.
//

import SwiftUI

struct CustomProductsButton: View {
    
    var helitype: String
    var serialno: String
    var description: String
    var price: String
    var onClick: () -> ()
    var body: some View {
        Button(action: onClick, label: {
            ZStack {
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("Cream"))
                    .stroke(Color("White"), lineWidth: 1)
                
                
                VStack (spacing: 4) {
                    
                    HStack {
                        Text(helitype)
                            .font(Font.custom("Inter28pt-Regular", size: 10))
                        .foregroundStyle(Color("LightGrey"))
                        
                        Text(".")
                            .font(Font.custom("Inter28pt-Regular", size: 10))
                        .foregroundStyle(Color("LightGrey"))
                        .offset(y:-3)
                        
                        Text(serialno)
                            .font(Font.custom("Inter28pt-Regular", size: 10))
                        .foregroundStyle(Color("LightGrey"))
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .lineSpacing(3)
                            .font(Font.custom("Inter28pt-Light", size: 12))
                        .foregroundStyle(Color("Black"))
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                    HStack{
                        
                        Text(price)
                            .font(Font.custom("Inter28pt-SemiBold", size: 12))
                        .foregroundStyle(Color("Black"))
                        
                        Spacer()
                        
                        Button(action: {
                            // action
                        }, label: {
                            Image("bookmark")
                                .resizable()
                                .renderingMode(.template) // Set rendering mode to template
                                .foregroundColor(Color("Blue"))
                                .frame(width: 15.5, height: 15.5)
                                
                        })
                        
                    }
                    
                }
                .padding(10)
                
                
                
            }
            .frame(width: 172, height: 126)
        })
    }
}

#Preview {
    CustomProductsButton(helitype: "R66", serialno: "S1234", description: "Lorem ipsum dolor sit\namet consectetur\nadipiscing elit", price: "$20"){
        
    }
}
