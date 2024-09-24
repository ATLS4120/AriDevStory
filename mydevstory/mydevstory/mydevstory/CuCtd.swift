//
//  cuctd.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct CuCtd: View {
    @State private var fontSize: Double = 16
    var body: some View {
        Text("CTD Life!").font(.largeTitle)
            HStack{
                Text(Constants.CtdMessage).padding()
                
                NavigationLink("Future!"){ FutureCoding()}
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
        VStack{
            Slider(value: $fontSize, in: 12...24)
                            .padding()
                        Text("Font Size: \(fontSize, specifier: "%.0f")")
                .font(.system(size: fontSize))
        }
        }
    }


#Preview {
    CuCtd()
}
private enum Constants {
    static let CtdMessage = "I switched to CTD! I loved the Intro Web class and Tiny Games(Lua). This semester, I am an LA for web and taking this class, advanced web, and Intro to VR "
}
