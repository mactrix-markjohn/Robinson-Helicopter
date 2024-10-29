//
//  MyFleetView.swift
//  Robinson Helicopter
//
//  Created by mac on 21/10/2024.
//

import SwiftUI

struct MyFleetView: View {
    
    @State var serialno = ""
    
    var body: some View {
        ZStack {
            
            // Main UI
            ZStack {
                Rectangle()
                    .fill(Color("Cream"))
                    .ignoresSafeArea()
                
                
                // Other contents
                ZStack {
                    // First view
                    //AddFleetView
                    
                    // Second view (Main view)
                    
                    MyFleetMainView
                    
                }
                .padding(.horizontal,16)
                
                
                
                
                
                
                
            }
            
            ZStack {
                
                Rectangle()
                    .fill(Color("Cream"))
                    .ignoresSafeArea()
                
                TrackFleetView
                    .padding(16)
                
                //InfoFindSerialNum
                
            }
            .opacity(0)
            
            
        }
    }
    
    
    @ViewBuilder
    var MyFleetMainView: some View {
        
        VStack {
            HStack {
                Text("MY FLEET")
                    .font(Font.custom("Shapiro-75HeavyText", size: 24))
                    .foregroundStyle(Color("Blue"))
                
                Spacer()
                
                Button(action: {
                    // action
                }, label: {
                    Image("plus")
                        .resizable()
                        .renderingMode(.template) // Set rendering mode to template
                        .foregroundColor(Color("Blue"))
                        .frame(width: 20, height: 20)
                    
                })
            }
            
            HStack {
                CustomBorderButton(title: "All", icon: "adjustments", isIcon: false, backcolor: Color("LightCream"), textcolor: Color("Black"), bordercolor: Color("DarkCreamV2"), widthBtn: 39, heightBtn: 28 ) {
                    // action
                }
                CustomBorderButton(title: "R66", icon: "adjustments", isIcon: false, backcolor: Color("Cream"), textcolor: Color("Black"), bordercolor: Color("DarkCreamV2"), widthBtn: 48, heightBtn: 28 ) {
                    // action
                }
                CustomBorderButton(title: "R44", icon: "adjustments", isIcon: false, backcolor: Color("Cream"), textcolor: Color("Black"), bordercolor: Color("DarkCreamV2"), widthBtn: 48, heightBtn: 28 ) {
                    // action
                }
                
                Spacer()
                
                Button(action: {
                    // action
                }, label: {
                    Image("menu-alt-4")
                        .resizable()
                        .renderingMode(.template) // Set rendering mode to template
                        .foregroundColor(Color("Blue"))
                        .frame(width: 20, height: 20)
                    
                })
            }
            
            VStack (spacing: 15) {
                
                // List of Fleet Item
                
                MyFleetItem(heliimage: "heliplaceholder", title: "R66 Turbine Marine", subtitle1: "D89 - T56 - H64", subtitle2: "N788AJ")
                
                MyFleetItem(heliimage: "heliplaceholderwhite", title: "R44 Cadet", subtitle1: "D89 - T56 - H64", subtitle2: "N788AJ")
                
                MyFleetItem(heliimage: "heliplaceholderblack", title: "R44 Raven II", subtitle1: "D89 - T56 - H64", subtitle2: "N788AJ")
                
                
                
                
                
            }
            
            Spacer()
        }
    }
    
    @ViewBuilder
    var AddFleetView: some View {
        
        
        VStack (spacing: 0) {
            
            HStack {
                Text("MY FLEET")
                    .font(Font.custom("Shapiro-75HeavyText", size: 24))
                    .foregroundStyle(Color("Blue"))
                
                Spacer()
                
            }
            
            Spacer()
            
            Image("helismalicon")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .padding(.bottom,24)
            
            Text("ADD YOUR HELICOPTERS TO BEGIN!")
                .font(Font.custom("Shapiro-75HeavyText", size: 18))
                .foregroundStyle(Color("Blue"))
                .multilineTextAlignment(.center)
                .lineSpacing(0)
                .padding(.bottom,6)
            
            
            Text("You haven’t added any of your helicopters yet.\nStart building your fleet now!")
                .font(Font.custom("Inter28pt-Regular", size: 14))
                .foregroundStyle(Color("Black"))
                .multilineTextAlignment(.center)
            
            HStack {
                
                
                CustomButton(title: "Get started", icon: "", backcolor: Color("Yellow"), textcolor: Color("Blue"), bordercolor: Color("Yellow")) {
                    // actiomn
                }
            }
            .padding(.top, 24)
            .padding(.horizontal,120)
            
            Spacer()
        }
        
    }
    
    
    @ViewBuilder
    var TrackFleetView: some View {
        
        
        VStack (spacing: 0) {
            // top bar
            
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
                
                Text("Add your Heli to your Fleet")
                    .font(Font.custom("Inter28pt-Regular", size: 14))
                    .foregroundStyle(Color("Black"))
                
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
            
            // other content
            
            Spacer()
            
            HStack {
                Image("helismalicon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 44, height: 44)
                
                
                Spacer()
            }
            .padding(.bottom,12)
            
            HStack {
                Text("ENTER YOUR SERIAL NUMBER")
                    .font(Font.custom("Shapiro-75HeavyText", size: 18))
                    .foregroundStyle(Color("Blue"))
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
            .padding(.bottom,12)
            
            /*HStack {
             Text("Enter Serial number")
             .font(Font.custom("Inter28pt-Regular", size: 14))
             .foregroundStyle(Color("Black"))
             .multilineTextAlignment(.center)
             
             Spacer()
             }*/
            
            HStack {
                CustomTextField(hint: "N4059Q", isPassword: false, value: $serialno )
                
                CustomButtonWithFrame(title: "Submit", icon: "", backcolor: Color("LightYellow"), textcolor: Color("ButtonTextYellow"), bordercolor: Color("LightYellow"),widthbtn: 90, heightbtn: 40) {
                    // actiomn
                }
            }
            .padding(.top, 4)
            
            HStack {
                
                Image("line4or")
                    .resizable()
                    .scaledToFit()
                
                Text("or")
                    .font(Font.custom("Inter28pt-SemiBold", size: 12))
                    .foregroundStyle(Color("DarkCreamV3"))
                    .padding(.horizontal,5)
                
                
                Image("line4or")
                    .resizable()
                    .scaledToFit()
                
            }
            .padding(.top, 34)
            .padding(.bottom, 34)
            
            CustomButton(title: "Scan code", icon: "scancream", isIcon: true, backcolor: Color("Blue"), textcolor: Color("Cream"), bordercolor: Color("Blue")) {
                // action
            }
            
            HStack (spacing: 3) {
                Spacer()
                
                Text("Don’t know where to look?")
                    .font(Font.custom("Inter28pt-Regular", size: 12))
                    .foregroundStyle(Color("DarkCreamV3"))
                
                CustomNoBackButton(title: "Click here for help", textcolor: Color("DarkCreamV3")) {
                    //Action here
                }
                
                
                Spacer()
            }
            .padding(.vertical,56)
            
            Spacer()
        }
        
        .padding(.top,0)
        
    }
    
    @ViewBuilder
    var InfoFindSerialNum: some View {
        ZStack {
            Rectangle()
                .fill(Color("Black"))
                .opacity(0.4)
                .ignoresSafeArea()
            
            
            ZStack {
                
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("Cream"))
                
                VStack {
                    
                    HStack {
                        
                        Text("My Fleet")
                            .foregroundStyle(Color("LightGrey"))
                            .font(Font.custom("Inter28pt-SemiBold", size: 14))
                            .multilineTextAlignment(.center)
                            .padding(.bottom,12)
                        
                        Spacer()
                        
                        Button(action: {
                            // action
                        }, label: {
                            Image("x")
                                .renderingMode(.template) // Set rendering mode to template
                                .foregroundColor(Color("DarkCreamV3"))
                            
                        })
                        
                    }
                    .padding(.bottom,-8)
                    
                    HStack {
                        Text("Where to find the serial number")
                            .foregroundStyle(Color("Black"))
                            .font(Font.custom("Inter28pt-SemiBold", size: 16))
                            .multilineTextAlignment(.center)
                            .padding(.bottom,12)
                        Spacer()
                    }
                    .padding(.bottom,-6)
                    
                    HStack {
                        Text("You can find it on the Confirmation Letter issued after\nthe deposit is received and the order confirmed, or\nengraved on a small metal plate on the right hand lower\nside of your helicopter.")
                            .font(Font.custom("Inter28pt-Light", size: 12))
                            .foregroundStyle(Color("Black"))
                        
                        Spacer()
                    }
                    .padding(.bottom,16)
                    
                    Image("serialtrackerimage")
                        .resizable()
                        .scaledToFit()
                    
                    
                }
                .padding(15)
                
            }
            .padding(.horizontal,20)
            
        }
    }
}

#Preview {
    MyFleetView()
}
