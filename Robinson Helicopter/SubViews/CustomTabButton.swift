//
//  CustomTabButton.swift
//  Robinson Helicopter
//
//  Created by mac on 18/10/2024.
//

import SwiftUI

struct CustomTabButton: View {
    
    var title: String
    var backcolor: String
    var textcolor: String
    var onClick: () -> ()
    
    
    var body: some View {
        
        Button(action: onClick, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .foregroundStyle(Color(backcolor))
                Text(title)
                    .foregroundStyle(Color(textcolor))
                    .font(Font.custom("Inter28pt-Regular", size: 12))
            }
            .frame(width: 18,height: 25)
        })
    }
}

#Preview {
    CustomTabButton(title: "1", backcolor: "DarkCreamV1", textcolor: "Blue") {
        // action
    }
}
