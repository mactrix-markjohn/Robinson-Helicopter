//
//  CustomNoBackButton.swift
//  Robinson Helicopter
//
//  Created by mac on 16/10/2024.
//

import SwiftUI

struct CustomNoBackButton: View {
    
    var title: String
    var textcolor: Color
    var onClick: () -> ()
    
    var body: some View {
        Button(title){
            // action
        }
        .font(Font.custom("Inter28pt-SemiBold", size: 12))
        .foregroundStyle(Color("DarkCreamV3"))
    }
}

/*#Preview {
    CustomNoBackButton()
}*/
