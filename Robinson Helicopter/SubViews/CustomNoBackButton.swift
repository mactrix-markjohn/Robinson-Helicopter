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
    var textSize: CGFloat = 12
    var onClick: () -> ()
    
    var body: some View {
        
        Button(action: onClick,
               
               label: {
            
            Text(title)
            
        })
        .font(Font.custom("Inter28pt-SemiBold", size: textSize))
        .foregroundStyle(textcolor)
    }
}

/*#Preview {
    CustomNoBackButton()
}*/
