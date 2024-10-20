//
//  HeliTrackView.swift
//  Robinson Helicopter
//
//  Created by mac on 14/10/2024.
//

import SwiftUI

struct HeliTrackView: View {
    
    @State var serialno = ""
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
            
            VStack {
                
                
                HStack {
                    Spacer()
                    
                    CustomNoBackButton(title: "Skip", textcolor: Color("Blue"), textSize: 14) {
                        // action
                    }
                    
                    
                    
                }
                
                
                // View: Order tracking views
                
                //OrderTrackerFirstStageView
                //OrderTrackerSecondStageView
                Spacer()
                
            }.padding(.horizontal,20)
            
            
            // View: Info on where to find serial number
            InfoFindSerialNum
            
            
            
        }
    }
    
    
    @ViewBuilder
    var OrderTrackerFirstStageView: some View {
        
        
        VStack (spacing: 10) {
            Spacer()
            
            Image("helismalicon")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .padding(.bottom,20)
            
            Text("ROBINSON HELICOPTER ORDER TRACKER")
                .font(Font.custom("Shapiro-75HeavyText", size: 18))
                .foregroundStyle(Color("Blue"))
                .multilineTextAlignment(.center)
            
            Text("Have you recently bought a helicopter and don’t have it yet? Would you like to track its assembly process? (You will be able to do it later, too.)")
                .font(Font.custom("Inter28pt-Regular", size: 14))
                .foregroundStyle(Color("Black"))
                .multilineTextAlignment(.center)
            
            HStack {
                CustomButton(title: "No", icon: "", backcolor: Color("Cream"), textcolor: Color("Blue"), bordercolor: Color("Cream")) {
                    // actiomn
                }
                
                CustomButton(title: "Yes", icon: "", backcolor: Color("Yellow"), textcolor: Color("Blue"), bordercolor: Color("Yellow")) {
                    // actiomn
                }
            }
            .padding(.top, 20)
            .padding(.horizontal,80)
                
            Spacer()
        }
        
    }
    
    
    @ViewBuilder
    var OrderTrackerSecondStageView: some View {
        
        
        VStack (spacing: 10) {
            
            
            HStack {
                Image("helismalicon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 44, height: 44)
                .padding(.bottom,20)
                
                Spacer()
            }
            
            HStack {
                Text("ROBINSON HELICOPTER ORDER TRACKER")
                    .font(Font.custom("Shapiro-75HeavyText", size: 18))
                    .foregroundStyle(Color("Blue"))
                .multilineTextAlignment(.leading)
                
                Spacer()
            }
            
            HStack {
                Text("Enter Serial number")
                    .font(Font.custom("Inter28pt-Regular", size: 14))
                    .foregroundStyle(Color("Black"))
                .multilineTextAlignment(.center)
                
                Spacer()
            }
            
            HStack {
               CustomTextField(hint: "N4059Q", isPassword: false, value: $serialno )
                
                CustomButtonWithFrame(title: "Submit", icon: "", backcolor: Color("LightYellow"), textcolor: Color("ButtonTextYellow"), bordercolor: Color("LightYellow"),widthbtn: 90, heightbtn: 40) {
                    // actiomn
                }
            }
            .padding(.top, 20)
            
            HStack {
                
                Image("line4or")
                    .resizable()
                    .scaledToFit()
                
                Text("or")
                    .foregroundStyle(Color("DarkCreamV3"))
                    .padding(.horizontal,5)
                
                
                Image("line4or")
                    .resizable()
                    .scaledToFit()
                
            }
            .padding(.top, 30)
            .padding(.bottom, 30)
            
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
            .padding(.vertical,30)
                
           
        }
        
        .padding(.top,70)
        
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
                                
                        })
                        
                    }
                    
                    Text("Are you sure you want to remove ‘Ben Smith’ account?")
                        .foregroundStyle(Color("Black"))
                        .font(Font.custom("Inter28pt-SemiBold", size: 14))
                        .multilineTextAlignment(.center)
                        .padding(.bottom,12)
                
                    
                    HStack {
                        CustomButton(title: "Yes", icon: "", backcolor: Color("Cream"), textcolor: Color("Blue"), bordercolor: Color("Cream")) {
                            // actiomn
                        }
                        
                        CustomButton(title: "No", icon: "", backcolor: Color("Yellow"), textcolor: Color("Blue"), bordercolor: Color("Yellow")) {
                            // actiomn
                        }
                    }
                    
                }
                .padding(15)
                
                   
                
            }
            .padding(.horizontal,20)
            
            
            
        }
    }

}

#Preview {
    HeliTrackView()
}
