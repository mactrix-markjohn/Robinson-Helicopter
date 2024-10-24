//
//  FindDealerView.swift
//  Robinson Helicopter
//
//  Created by mac on 24/10/2024.
//

import SwiftUI

struct FindDealerView: View {
    
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var password = ""
    @State var errorMessage = ""
    @State var searchValue  = ""
    
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
                        
                        
                        
                    }
                    .padding(.bottom,30)
                    
                    HStack {
                        Image("helismalicon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 44, height: 44)
                        
                        
                        Spacer()
                    }
                    .padding(.bottom,12)
                    
                    HStack {
                        Text("FIND DEALER OR SERVICE CENTER")
                            .font(Font.custom("Shapiro-75HeavyText", size: 18))
                            .foregroundStyle(Color("Blue"))
                        .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    .padding(.bottom,24)
                    
                    // Find Dealer form
                    
                    VStack {
                        // content
                        
                        VStack {
                            HStack {
                                Text("What are you looking for?")
                                    .font(Font.custom("Inter28pt-Light", size: 14))
                                .foregroundStyle(Color("NeutralColor"))
                                Spacer()
                            }
                            CustomDropDownTextField(hint: "Select", value: $firstname)
                        }.padding(.bottom,8)
                        
                        HStack {
                            VStack  {
                                HStack {
                                    Text("Helicopter")
                                        .font(Font.custom("Inter28pt-Light", size: 14))
                                    .foregroundStyle(Color("NeutralColor"))
                                    Spacer()
                                }
                                CustomDropDownTextField(hint: "Select", value: $firstname)
                            }
                            .frame(width: 117)
                            
                            VStack  {
                                HStack {
                                    Text("Model")
                                        .font(Font.custom("Inter28pt-Light", size: 14))
                                    .foregroundStyle(Color("NeutralColor"))
                                    Spacer()
                                }
                                CustomDropDownTextField(hint: "Select", value: $firstname)
                            }
                              
                            
                        }.padding(.bottom,8)
                        
                        VStack {
                            HStack {
                                Text("Country")
                                    .font(Font.custom("Inter28pt-Light", size: 14))
                                .foregroundStyle(Color("NeutralColor"))
                                Spacer()
                            }
                            CustomDropDownTextField(hint: "Select", value: $firstname)
                        }.padding(.bottom,8)
                        
                        VStack {
                            HStack {
                                Text("State")
                                    .font(Font.custom("Inter28pt-Light", size: 14))
                                .foregroundStyle(Color("NeutralColor"))
                                Spacer()
                            }
                            CustomDropDownTextField(hint: "Select", value: $firstname)
                        }.padding(.bottom,8)
                        
                        VStack {
                            HStack {
                                Text("City")
                                    .font(Font.custom("Inter28pt-Light", size: 14))
                                .foregroundStyle(Color("NeutralColor"))
                                Spacer()
                            }
                            CustomDropDownTextField(hint: "Select", value: $firstname)
                        }.padding(.bottom,12)
                        
                        CustomButton(title: "Show Results ", icon: "", isIcon: false, backcolor: Color("StrangeBlue"), textcolor: Color("LightBlue"), bordercolor: Color("StrangeBlue")) {
                            // something should be done
                        }
                        
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
                        .padding(.vertical, 12)
                        
                        
                        HStack {
                            
                            // Search bar view
                            ZStack {
                                TextField("Search by name, serial num. or zip code", text: $searchValue)
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
                            
                            
                            Button(action: {
                                // action
                            }, label: {
                                ZStack {
                                    
                                    // Circle with a white background
                                    Circle()
                                        .fill(Color("Yellow"))
                                        .frame(width: 40, height: 40)
                                    Image("search")
                                        .resizable()
                                        .renderingMode(.template) // Set rendering mode to template
                                        .foregroundColor(Color("Blue"))
                                    .frame(width: 20, height: 20)
                                    
                                       
                                }
                                
                            })
                            
                        }
                        
                    }
                    
                    Spacer()
                }
            }
            .scrollIndicators(.hidden)
            .padding(.horizontal,20)
            
            
        }
        
    }
}

#Preview {
    FindDealerView()
}
