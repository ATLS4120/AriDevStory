//
//  cucompsci.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct cucompsci: View {
    var body: some View {
        Text("CS at CU")
            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
        
            VStack{
                Text(Constants.cuCS).padding()
                
                NavigationLink(destination: cuctd()) {
                    
                    Text("CTD!")
                        
                        .background{
                            Color.purple
                        }
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 9)
                                .stroke(lineWidth: 5)
                        })
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .padding()
                }
            }
        }
    }

#Preview {
    cucompsci()
}
private enum Constants {
    static let cuCS = "I started as a CS major and took Computer Systems. I realized my CS degree was a means to an end to do management. I learned about CTD and the idea of having a career in front-end development sounds amazing. I switched to a CS minor, CTD major. I took Principles of Programming Languages (Scala) and HCI to finish the minor."
}
