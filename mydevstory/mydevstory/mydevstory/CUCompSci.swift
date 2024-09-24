//
//  cucompsci.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct CUCompSci: View {

    var body: some View {
        Text("CS at CU")
            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
        
            VStack{
                Text(Constants.CUCS).padding()
                NavigationLink(destination: CuCtd()){
                    BigNavButton(message: "CTD!",
                                 backgroundColor: .purple,
                    foregroundColor: .white,
                    font: .title3,
                    fontWeight: .medium
                        )
                    
                }
                
                .overlay(content: {
                    
                    Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .stroke(lineWidth: 5)
                        
                        .foregroundColor(.white)
                  
                        
                })
                
            }
        }
    }

#Preview {
    CUCompSci()
}
private enum Constants {
    static let CUCS = "I started as a CS major and took Computer Systems. I realized my CS degree was a means to an end to do management. I learned about CTD and the idea of having a career in front-end development sounds amazing. I switched to a CS minor, CTD major. I took Principles of Programming Languages (Scala) and HCI to finish the minor."
}
