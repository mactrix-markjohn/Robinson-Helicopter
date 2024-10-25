//
//  MyDealerSystemCenter.swift
//  Robinson Helicopter
//
//  Created by mac on 24/10/2024.
//

import SwiftUI

struct MyDealerSystemCenter: View {
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var password = ""
    @State var errorMessage = ""
    @State var searchValue  = ""
    @State var value = ""
    
    var body: some View {
        
        
        ZStack {
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
            ScrollView {
                
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
                        
                        Text("Dealers & Service Centers")
                            .font(Font.custom("Inter28pt-Regular", size: 14))
                            .foregroundStyle(Color("Black"))
                        
                        Spacer()
                        
                        HStack {
                            
                            Button(action: {
                                // action
                            }, label: {
                                Image("plus")
                                    .resizable()
                                    .renderingMode(.template) // Set rendering mode to template
                                    .foregroundColor(Color("Black"))
                                    .frame(width: 20, height: 20)
                                
                            })
                        }
                        
                        
                        
                    }
                    .padding(.bottom,8)
                    
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
                                .renderingMode(.template)
                                .foregroundStyle(Color("DarkCreamV3"))
                                .frame(width: 14, height: 14)
                                .padding(10)
                                .padding(.leading,7)
                        })
                        
                    }
                    .padding(.bottom, 12)
                    
                    HStack (spacing: 6) {
                        HStack{
                            CustomBorderButton(title: "", icon: "adjustments", isIcon: true, backcolor: Color("Cream"), textcolor: Color("Black"), bordercolor: Color("DarkCreamV2"), widthBtn: 30, heightBtn: 28 ) {
                                // action
                            }
                            
                            CustomBorderButton(title: "All", icon: "adjustments", isIcon: false, backcolor: Color("LightCream"), textcolor: Color("Black"), bordercolor: Color("DarkCreamV2"), widthBtn: 39, heightBtn: 28 ) {
                                // action
                            }
                            
                            CustomBorderButton(title: "Dealers", icon: "adjustments", isIcon: false, backcolor: Color("Cream"), textcolor: Color("Black"), bordercolor: Color("DarkCreamV2"), widthBtn: 69, heightBtn: 28 ) {
                                // action
                            }
                            
                            CustomBorderButton(title: "Service Centers", icon: "adjustments", isIcon: false, backcolor: Color("Cream"), textcolor: Color("Black"), bordercolor: Color("DarkCreamV2"), widthBtn: 118, heightBtn: 28 ) {
                                // action
                            }
                        }
                        
                        Spacer()
                        
                        HStack{
                            CustomBorderButton(title: "", icon: "switch-vertical", isIcon: true, backcolor: Color("Cream"), textcolor: Color("Black"), bordercolor: Color("DarkCreamV2"), widthBtn: 30, heightBtn: 28 ) {
                                // action
                            }
                        }
                    }
                    
                    
                    
                    HStack {
                        
                        Text("MY DEALERS")
                            .font(Font.custom("Shapiro-75HeavyText", size: 18))
                            .foregroundStyle(Color("DeepBlue"))
                        
                        Spacer()
                        
                        CustomNoBackButton(title: "Shop All", textcolor: Color("Blue"), textSize: 12) {
                            // action
                        }
                        
                    }
                    .padding(.bottom,12)
                    .padding(.top,24)
                    // Results of Dealer
                    VStack (spacing: 24){
                        
                        
                        
                        FIndDealerResultItem()
                        
                        FIndDealerResultItem()
                        
                        
                    }
                    
                    HStack {
                        
                        Text("MY SERVICE CENTERS")
                            .font(Font.custom("Shapiro-75HeavyText", size: 18))
                            .foregroundStyle(Color("DeepBlue"))
                        
                        Spacer()
                        
                        CustomNoBackButton(title: "Shop All", textcolor: Color("Blue"), textSize: 12) {
                            // action
                        }
                        
                    }
                    .padding(.bottom,12)
                    // Results of Dealer
                    VStack (spacing: 24){
                        
                        
                        
                        FIndDealerResultItem()
                        
                        FIndDealerResultItem()
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                        
                        
                    
                    Spacer()
                }
            }
            .scrollIndicators(.hidden)
            .padding(.horizontal,20)
            
            // Comfirmation dialog
            RemoveDealerConfirmation
                .opacity(0)
        }
        
    }
    
    @ViewBuilder
    var RemoveDealerConfirmation: some View {
        ZStack {
            Rectangle()
                .fill(Color("Black"))
                .opacity(0.4)
                .ignoresSafeArea()
            
            ZStack {
                
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("Cream"))
                
                VStack {
                    
                    Text("Are you sure you want to delete\n‘Hillsboro Aviation, Inc’ from\nyour Dealers contacts?")
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
            .frame(width:266,height: 146)
            
            
        }
    }

}

#Preview {
    MyDealerSystemCenter()
}
