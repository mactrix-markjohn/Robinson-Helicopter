//
//  SplashView.swift
//  Robinson Helicopter
//
//  Created by mac on 14/10/2024.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color("Cream"))
                .ignoresSafeArea()
            
            VStack {
                Image("yellowheli")
                    .resizable()
                    .scaledToFit()
                
                Image("logoMain")
                    .resizable()
                    .scaledToFit()
                    .frame(width:
                            191.55, height:
                            77.42)
            }
        }
    }
}

#Preview {
    SplashView()
}
