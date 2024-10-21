//
//  MainTabView.swift
//  Robinson Helicopter
//
//  Created by mac on 21/10/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        
        
        ZStack {
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
            
            TabView {
                
                HomeView()
                    .tabItem {
                        //Label("Home", image: "home")
                        
                        Image("home").renderingMode(.template)
                        Text("Home")
                            
                        
                    }
                MyFleetView()
                    .tabItem {
                        //Label("My Fleet", image: "helicopters4")
                            
                        Image("helicopters4").renderingMode(.template)
                        Text("My Fleet")
                    }
                
                
                CommunityView()
                    .tabItem {
                        
                        Image("user-group").renderingMode(.template)
                        Text("Community")
                        
                    }
                
                ShopView()
                    .tabItem {
                        //Label("Home", image: "home")
                        Image("shopping bag 2").renderingMode(.template)
                        Text("Shop")
                    }
                
                MyAccountView()
                    .tabItem {
                        //Label("Home", image: "home")
                        Image("user").renderingMode(.template)
                        Text("My Account")
                    }
                
                
                
                /*ToDoListView(userId: viewModel.currentUserId)
                 .tabItem {
                 Label("Home", systemImage: "house")
                 }
                 
                 ProfileView()
                 .tabItem {
                 Label("Profile", systemImage: "person.circle")
                 }*/
            }
            .onAppear() {
                //UITabBar.appearance().backgroundColor =
                UITabBar.appearance().barTintColor = .lightCream
                UITabBar.appearance().unselectedItemTintColor = UIColor.gray
                
            }
            .accentColor(Color("Black"))
            //.tint(Color("Black"))
            
        }
    }
}

#Preview {
    MainTabView()
}
