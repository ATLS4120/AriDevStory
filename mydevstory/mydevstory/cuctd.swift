//
//  cuctd.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct cuctd: View {
    var body: some View {
        Text("CTD Life!").font(.largeTitle)
            HStack{
                Text(Constants.ctdMessage).padding()
                
                NavigationLink(destination: futurecoding()) {
                    
                    Text("Future!")
                        .lineLimit(7)
                        .padding(7)
                        .background{
                            Color.purple
                        }
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(lineWidth: 5)
                        })
                        .foregroundStyle(.white)
                        .font(.title2)
                        .fontWeight(.medium)
                }
            }
        }
    }


#Preview {
    cuctd()
}
private enum Constants {
    static let ctdMessage = "I switched to CTD! I loved the Intro Web class and Tiny Games(Lua). This semester, I am an LA for web and taking this class, advanced web, and Intro to VR "
}
