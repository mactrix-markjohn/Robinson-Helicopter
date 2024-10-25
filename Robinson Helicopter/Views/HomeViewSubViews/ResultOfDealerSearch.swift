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
                    VStack (spacing: 24){
                        
                        FIndDealerResultItem()
                        
                        FIndDealerResultItem()
                        
                        FIndDealerResultItem()
                        
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
