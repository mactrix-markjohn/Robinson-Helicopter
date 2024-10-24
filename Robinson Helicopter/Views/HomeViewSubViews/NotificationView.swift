//
//  NotificationView.swift
//  Robinson Helicopter
//
//  Created by mac on 24/10/2024.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
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
                    
                    Text("Notifications")
                        .font(Font.custom("Inter28pt-Regular", size: 14))
                        .foregroundStyle(Color("Black"))
                    
                    Spacer()
                    
                    
                    HStack {
                        
                        Button(action: {
                            // action
                        }, label: {
                            Image("settings")
                                .resizable()
                                .renderingMode(.template) // Set rendering mode to template
                                .foregroundColor(Color("Black"))
                                .frame(width: 20, height: 20)
                            
                        })
                    }
                }
                .padding(.horizontal,20)
                
                
                List() {
                    
                    NotificationItems(title: "Safety Alert", contentbody: "Lorem ipsum dolor sit amet, consectetur.", mainicon: "exclamation", checkstate: -1)
                        .listRowBackground(Color("Cream"))
                        .listRowSeparator(.hidden)
                        .swipeActions {
                            Button("Delete") {
                                //viewModel.delete(id: item.id)
                            }
                            .font(Font.custom("Inter28pt-SemiBold", size: 10))
                            .foregroundStyle(Color.white)
                            .tint(Color("LightGrey"))
                            
                        }
                    
                    NotificationItems(title: "General RHC Information", contentbody: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.", mainicon: "information-circle", checkstate: -1)
                        .listRowBackground(Color("Cream"))
                        .listRowSeparator(.hidden)
                        .swipeActions {
                            Button("Delete") {
                                //viewModel.delete(id: item.id)
                            }
                            .font(Font.custom("Inter28pt-SemiBold", size: 10))
                            .foregroundStyle(Color.white)
                            .tint(Color("LightGrey"))
                            
                        }
                    
                    NotificationItems(title: "R44 News", contentbody: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.", mainicon: "helicopter", checkstate: -1)
                        .listRowBackground(Color("Cream"))
                        .listRowSeparator(.hidden)
                        .swipeActions {
                            Button("Delete") {
                                //viewModel.delete(id: item.id)
                            }
                            .font(Font.custom("Inter28pt-SemiBold", size: 10))
                            .foregroundStyle(Color.white)
                            .tint(Color("LightGrey"))
                            
                        }
                    
                    NotificationItems(title: "New R66 Brochure", contentbody: "Lorem ipsum dolor sit amet.", mainicon: "document-text", checkstate: -1)
                        .listRowBackground(Color("Cream"))
                        .listRowSeparator(.hidden)
                        .swipeActions {
                            Button("Delete") {
                                //viewModel.delete(id: item.id)
                            }
                            .font(Font.custom("Inter28pt-SemiBold", size: 10))
                            .foregroundStyle(Color.white)
                            .tint(Color("LightGrey"))
                            
                        }
                    
                    
                }
                .listStyle(PlainListStyle())
                .scrollContentBackground(.hidden)
                
                
                Spacer()
                
            }
            .padding(.horizontal,0)
            
        }
    }
}

#Preview {
    NotificationView()
}
