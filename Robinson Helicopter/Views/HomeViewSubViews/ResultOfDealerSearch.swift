//
//  ResultOfDealerSearch.swift
//  Robinson Helicopter
//
//  Created by mac on 24/10/2024.
//

import SwiftUI

struct ResultOfDealerSearch: View {
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
                    
                    
                    // Results of Dealer
                    VStack{
                        
                        HStack (alignment:.top){
                            
                            ZStack {
                                // Circle with a white background
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 28, height: 28)
                                
                                // Camera image on top
                                Image("settings")
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFit()
                                    .frame(width: 16, height: 16)
                                    .foregroundColor(Color("Blue"))
                            }.padding(.trailing,12)
                            
                            
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Hillsboro Aviation, Inc.")
                                        .font(Font.custom("Inter28pt-SemiBold", size: 14))
                                        .foregroundStyle(Color("Blue"))
                                    
                                    Spacer()
                                    
                                    CustomNoBackButton(title: "Add", textcolor: Color("Blue"), textSize: 12) {
                                        // action
                                    }
                                    
                                }
                                .padding(.bottom,8)
                                
                                HStack {
                                    
                                    // First column
                                    VStack {
                                        
                                        // body 1
                                        VStack {
                                            HStack {
                                                Text("Sales & Service")
                                                    .font(Font.custom("Inter28pt-SemiBold", size: 10))
                                                    .foregroundStyle(Color("LightGrey"))
                                                
                                                
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                Text("R66, R44, R22")
                                                    .font(Font.custom("Inter28pt-SemiBold", size: 10))
                                                    .foregroundStyle(Color("Black"))
                                                
                                                Spacer()
                                            }
                                            
                                        }.padding(.bottom,8)
                                        
                                        // body 2
                                        VStack {
                                            HStack {
                                                Text("Location")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("LightGrey"))
                                                
                                                
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                Text("Hillsboro, Oregon")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("Black"))
                                                
                                                Spacer()
                                            }
                                            
                                        }.padding(.bottom,8)
                                        
                                        // body 3
                                        VStack {
                                            HStack {
                                                Text("Phone")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("LightGrey"))
                                                
                                                
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                Text("503-648-2831")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("Black"))
                                                
                                                Spacer()
                                            }
                                            
                                        }.padding(.bottom,8)
                                        
                                        
                                    }
                                    .frame(width: 85)
                                    
                                    
                                    // Second column
                                    VStack{
                                        
                                        // body 1
                                        VStack {
                                            HStack {
                                                Text("Email")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("LightGrey"))
                                                
                                                
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                Text("aircraftsales@hillsboroaviation.com")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("Black"))
                                                    
                                                
                                                Spacer()
                                            }
                                            
                                        }.padding(.bottom,8)
                                        
                                        // body 2
                                        VStack {
                                            HStack {
                                                Text("Website")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("LightGrey"))
                                                
                                                
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                Text("www.hillsboroaviation.com")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("Black"))
                                                
                                                Spacer()
                                            }
                                            
                                        }.padding(.bottom,8)
                                        
                                        
                                        // body 3
                                        VStack {
                                            HStack {
                                                Text("Fax")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("LightGrey"))
                                                
                                                
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                Text("503-648-1886")
                                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                                    .foregroundStyle(Color("Black"))
                                                
                                                Spacer()
                                            }
                                            
                                        }.padding(.bottom,8)
                                        
                                    }
                                    
                                    
                                }
                                
                                
                                
                            }
                            
                                
                            
                            
                            
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
    ResultOfDealerSearch()
}
