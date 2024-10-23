//
//  HeliTrackItem.swift
//  Robinson Helicopter
//
//  Created by mac on 22/10/2024.
//

import SwiftUI

struct HeliTrackItem: View {
    
    var heliname: String
    var helistatus: String
    var statusdate: String
    var statustime: String
    var expecteddate: String
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 8)
                .fill(Color("LightCream"))
                .stroke(Color("DarkCreamV1"), lineWidth: 1)
                .shadow(color: Color(white: 0,opacity:0.04),radius: 8)
            
            VStack (spacing: 12) {
                
                HStack {
                    Text(heliname)
                        .font(Font.custom("Inter28pt-SemiBold", size: 10))
                        .foregroundStyle(Color("Black"))
                    
                    Spacer()
                }
                
                HStack (spacing: -16){
                    
                    CustomCircleImage(icon: "settings",iconcolor: Color("Black"), iconwidth: 15.27,iconheight: 15.27,circlewidth: 28, circleheight: 28)
                    
                    Rectangle()
                        .fill(Color("DarkCreamV1"))
                        .frame(height: 2)
                        .padding()
                    
                    CustomCircleImage(icon: "database",iconcolor: Color("Black"), iconwidth: 15.27,iconheight: 15.27,circlewidth: 28, circleheight: 28)
                    
                    Rectangle()
                        .fill(Color("DarkCreamV1"))
                        .frame(height: 2)
                        .padding()
                    
                    CustomCircleImage(icon: "adjustments",iconcolor: Color("Black"), iconwidth: 15.27,iconheight: 15.27,circlewidth: 28, circleheight: 28)
                    
                    Rectangle()
                        .fill(Color("DarkCreamV1"))
                        .frame(height: 2)
                        .padding()
                    
                    
                    
                    CustomCircleImage(icon: "color-swatch",iconcolor: Color("Black"), iconwidth: 15.27,iconheight: 15.27,circlewidth: 28, circleheight: 28)
                    
                    Rectangle()
                        .fill(Color("DarkCreamV1"))
                        .frame(height: 2)
                        .padding()
                    
                    
                    
                    CustomCircleImage(icon: "lock-closed",iconcolor: Color("LightLightBlue"), iconwidth: 15.27,iconheight: 15.27,circlecolor: Color("Blue"),circlewidth: 28, circleheight: 28)
                    
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .frame(height: 1)
                        .foregroundStyle(Color("DarkCreamV3"))
                    
                    CustomCircleImage(icon: "helicopter",iconcolor: Color("DarkCreamV3"), iconwidth: 15.27,iconheight: 15.27,circlecolor: Color("Cream"),circlewidth: 28, circleheight: 28)
                    
                    
                }
                
                
                HStack {
                    Text(helistatus)
                        .font(Font.custom("Inter28pt-Regular", size: 10))
                    .foregroundStyle(Color("Blue"))
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        Text(statusdate)
                            .font(Font.custom("Inter28pt-Regular", size: 10))
                            .foregroundStyle(Color("LightGrey"))
                        
                        Text(".")
                            .font(Font.custom("Inter28pt-Regular", size: 10))
                            .foregroundStyle(Color("LightGrey"))
                            .offset(y:-3)
                        
                        Text(statustime)
                            .font(Font.custom("Inter28pt-Regular", size: 10))
                            .foregroundStyle(Color("LightGrey"))
                        
                        
                    }
                }
                
                Rectangle()
                    .fill(Color("DarkCreamV1"))
                    .frame(height: 2)
                
                
                HStack (spacing:3) {
                    
                    Text("Expected finishing day:")
                        .font(Font.custom("Inter28pt-Regular", size: 10))
                        .foregroundStyle(Color("LightGrey"))
                    
                    Text(expecteddate)
                        .font(Font.custom("Inter28pt-Regular", size: 10))
                        .foregroundStyle(Color("LightGrey"))
                    
                    Spacer()
                    
                    
                }
                
            }
            .padding(16)
            
        }

    }
}

#Preview {
    HeliTrackItem(heliname: "R66 TURBINE MARINE", helistatus: "We are checking safety.", statusdate: "Jun 20", statustime: "12:35", expecteddate: "July 8th")
}
