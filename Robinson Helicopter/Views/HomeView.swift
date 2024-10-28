//
//  HomeView.swift
//  Robinson Helicopter
//
//  Created by mac on 14/10/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State var value: String = ""
    //@State var items: []
    @State var isOn: Bool = true
    
    
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
                                    .overlay{
                                        ZStack {
                                            // Circle with a white background
                                            Circle()
                                                .fill(Color("Blue"))
                                                .frame(width: 14, height: 14)
                                            
                                            // Camera image on top
                                            Text("1")
                                                .font(.custom("Inter28pt-SemiBold", size: 8))
                                                .foregroundStyle(Color("Cream"))
                                        }
                                        .offset(x:9,y:-5)
                                    }
                                
                            })
                        }
                        .padding(.trailing,5)
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
                                .renderingMode(.template)
                                .foregroundStyle(Color("DarkCreamV3"))
                                .frame(width: 14, height: 14)
                                .padding(10)
                                .padding(.leading,7)
                        })
                        
                    }
                    /*.overlay {
                     
                     // view
                     ZStack {
                     
                     Rectangle()
                     .fill(Color("Cream"))
                     .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                     .opacity(0.5)
                     
                     
                     ZStack {
                     RoundedRectangle(cornerRadius: 8)
                     .fill(Color("Cream"))
                     .stroke(Color("White"), lineWidth: 1)
                     .frame(maxHeight: 152)
                     }
                     
                     
                     }
                     .offset(y:80)
                     }
                     .zIndex(10)*/
                    
                    
                    
                    // YOUR HELI IS BEING BUILT!
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("LightCream"))
                            .stroke(Color("DarkCreamV1"), lineWidth: 1)
                        
                        VStack {
                            
                            HStack {
                                Text("YOUR HELI IS BEING BUILT!")
                                    .font(Font.custom("Shapiro-75HeavyText", size: 14))
                                    .foregroundStyle(Color("Blue"))
                                
                                Spacer()
                                
                                Button(action: {
                                    // action
                                }, label: {
                                    Image("plus-sm")
                                        .resizable()
                                        .renderingMode(.template) // Set rendering mode to template
                                        .foregroundColor(Color("Blue"))
                                        .frame(width: 24, height: 24)
                                    
                                })
                            }
                            .padding(.bottom,1)
                            
                            // HeliTrack Item
                            
                            HeliTrackItem(heliname: "R66 TURBINE MARINE", helistatus: "We working on the structure.", statusdate: "Jun 20", statustime: "12:35", expecteddate: "July 8th")
                            
                            HeliTrackItem(heliname: "R44 Cadet", helistatus: "We are checking safety.", statusdate: "Jun 19", statustime: "12:35", expecteddate: "July 8th")
                            
                        }
                        .padding(24)
                        
                    }
                    
                    
                    
                    
                    
                    // Blue view for Find a Dealer
                    
                    ZStack {
                        CustomTextAndCheveronButton(backcolor: Color("Blue"), bordercolor: Color("White"), subheading: "Looking for help?", subtextcolor: Color("Cream"), heading: "FIND A DEALER OR SERVICE CENTER", headtextcolor: Color("Cream"), iconcolor: Color("Cream")){
                            // action
                        }
                        .padding(.vertical,16)
                        
                        
                        // My Dealers and Service Centers
                        MyDealerServceCenters
                        
                    }
                    
                    
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
                    
                    
                    CustomTextAndCheveronButton(backcolor: Color("Cream"), bordercolor: Color("White"), subheading: "Thinking about a new helicopter?", subtextcolor: Color("LightGrey"), heading: "CONFIGURE YOUR DESIRED HELI", headtextcolor: Color("Black"), iconcolor: Color("Black")){
                        // action
                    }
                    .padding(.vertical,16)
                    
                    CustomTextAndCheveronButton(backcolor: Color("Cream"), bordercolor: Color("White"), subheading: "Track you helicopter’s assembly process", subtextcolor: Color("LightGrey"), heading: "HELICOPTER ORDER TRACKER", headtextcolor: Color("Black"), iconcolor: Color("Black")){
                        // action
                    }
                    .padding(.bottom,16)
                    
                    
                    // OUR PRODUCTS
                    HStack {
                        
                        Text("OUR PRODUCTS")
                            .font(Font.custom("Shapiro-75HeavyText", size: 14))
                            .foregroundStyle(Color("DeepBlue"))
                        
                        Spacer()
                        
                        CustomNoBackButton(title: "Shop Parts", textcolor: Color("Blue"), textSize: 12) {
                            // action
                        }
                        
                    }
                    .padding(.bottom,12)
                    
                    // Grid list of Products
                    
                    HStack {
                        
                        CustomProductsButton(helitype: "R66", serialno: "S1234", description: "Lorem ipsum dolor sit\namet consectetur\nadipiscing elit", price: "$20") {
                            // action
                        }
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color("Cream"))
                                .stroke(Color("White"), lineWidth: 1)
                            
                            
                            VStack (spacing: 4) {
                                
                                HStack {
                                    Text("R66")
                                        .font(Font.custom("Inter28pt-Regular", size: 10))
                                        .foregroundStyle(Color("LightGrey"))
                                    
                                    Text(".")
                                        .font(Font.custom("Inter28pt-Regular", size: 10))
                                        .foregroundStyle(Color("LightGrey"))
                                        .offset(y:-3)
                                    
                                    Text("S1234")
                                        .font(Font.custom("Inter28pt-Regular", size: 10))
                                        .foregroundStyle(Color("LightGrey"))
                                    
                                    Spacer()
                                }
                                
                                HStack {
                                    Text("Lorem ipsum dolor sit\namet consectetur\nadipiscing elit")
                                        .lineSpacing(3)
                                        .font(Font.custom("Inter28pt-Light", size: 12))
                                        .foregroundStyle(Color("Black"))
                                    
                                    Spacer()
                                }
                                
                                Spacer()
                                
                                HStack{
                                    
                                    Text("$20")
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
                    }
                    
                    
                    
                    
                }
                
                
            }.scrollIndicators(.hidden)
                .padding(.horizontal,16)
            
            
            // Display notification
            //NotificationView()
            
            // Display Notification Settings
            //NotificationSettingsView()
            
            // Display Find Dealer View
            //FindDealerView()
            
            
            // More details on dealer
            MoreDetailsOnDealers
                .opacity(0)
        }
        
        
    }
    
    @ViewBuilder
    var MyDealerServceCenters: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color("Blue"))
                .stroke(Color("White"), lineWidth: 1)
            
            VStack {
                
                HStack (spacing: 12){
                    
                    HStack {
                        Text("MY DEALERS & SERVICE CENTERS")
                            .font(Font.custom("Shapiro-75HeavyText", size: 14))
                            .foregroundStyle(Color("Cream"))
                        
                        Spacer()
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
                
                // The top dealer and service centers
                VStack (spacing: 10) {
                    
                    // Service Center
                    HStack (spacing: 0) {
                        ZStack {
                            // Circle with a white background
                            Circle()
                                .fill(Color.white)
                                .frame(width: 40, height: 40)
                            
                            // Camera image on top
                            Image("users")
                                .resizable()
                                .renderingMode(.template)
                                .scaledToFit()
                                .frame(width: 16.67, height: 16.67)
                                .foregroundColor(Color("Blue"))
                            
                        }.padding(.trailing,12)
                        
                        
                        // Dealer name and details
                        VStack (alignment:.leading) {
                            
                            Text("Hillsboro Aviation, Inc.")
                                .font(Font.custom("Inter28pt-SemiBold", size: 12))
                                .foregroundStyle(Color("Cream"))
                            
                            HStack {
                                Text("Dealer • ")
                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("DarkCreamV2"))
                                + Text("Hillsboro, Portland, Oregon, USA.")
                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                    .foregroundStyle(Color("DarkCreamV2"))
                            }
                            
                        }
                        
                        Spacer()
                    }
                    
                    // Service Center
                    
                    HStack (spacing: 0) {
                        ZStack {
                            // Circle with a white background
                            Circle()
                                .fill(Color.white)
                                .frame(width: 40, height: 40)
                            
                            // Camera image on top
                            Image("settings")
                                .resizable()
                                .renderingMode(.template)
                                .scaledToFit()
                                .frame(width: 16.67, height: 16.67)
                                .foregroundColor(Color("Blue"))
                            
                        }.padding(.trailing,12)
                        
                        
                        // Dealer name and details
                        VStack (alignment:.leading) {
                            
                            Text("Hillsboro Heli Academy")
                                .font(Font.custom("Inter28pt-SemiBold", size: 12))
                                .foregroundStyle(Color("Cream"))
                            
                            HStack {
                                Text("Service Center • ")
                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("DarkCreamV2"))
                                + Text("Troutdale, Portland, Oregon, USA.")
                                    .font(Font.custom("Inter28pt-Regular", size: 10))
                                    .foregroundStyle(Color("DarkCreamV2"))
                            }
                            
                        }
                        
                        Spacer()
                    }
                }
                
                
                
                
                Spacer()
                
            }.padding(.horizontal,24)
                .padding(.vertical,24)
            
            
        }.padding(.vertical,16)
    }
    
    @ViewBuilder
    var MoreDetailsOnDealers: some View {
        ZStack {
            Rectangle()
                .fill(Color("Black"))
                .opacity(0.4)
                .ignoresSafeArea()
            
            
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        // action
                    }, label: {
                        Image("bluexbutton")
                    })
                }.padding(.horizontal,24)
                    .padding(.vertical,8)
                
                
                ZStack {
                    
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color("Cream"))
                    
                    VStack {
                        
                        HStack (alignment:.top){
                            
                            ZStack {
                                // Circle with a white background
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 40, height: 40)
                                
                                // Camera image on top
                                Image("users")
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFit()
                                    .frame(width: 16.67, height: 16.67)
                                    .foregroundColor(Color("Blue"))
                                
                            }.padding(.trailing,12)
                            
                            
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Hillsboro Aviation, Inc.")
                                        .font(Font.custom("Inter28pt-SemiBold", size: 14))
                                        .foregroundStyle(Color("Blue"))
                                    
                                    Spacer()
                                    
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
                                        
                                        
                                        // body 2
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
                                
                                // Email
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
                                            .tint(Color("Black"))
                                        
                                        
                                        Spacer()
                                    }
                                    
                                }.padding(.bottom,8)
                                
                                
                                //Website
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
                                            .tint(Color("Black"))
                                        
                                        Spacer()
                                    }
                                    
                                }.padding(.bottom,8)
                                
                                
                                
                            }
                            
                        }
                        
                        
                        Spacer()
                        
                    }
                    .padding(24)
                    
                    
                    
                    
                }
                .frame(height: 212)
                .padding(.horizontal,24)
                
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        // action
                    }, label: {
                        Image("sharebtn")
                    })
                    
                }.padding(.horizontal,24)
                    .padding(.vertical,8)
                
            }
            
            
        }
    }
    
    
}

#Preview {
    HomeView()
}
