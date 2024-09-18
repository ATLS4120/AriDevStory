//
//  futurecoding.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct futurecoding: View {
    var body: some View {
        Text("I hope someone hires me...").font(.largeTitle)
            ScrollView{
                Text("After graduation, I want to pursue work in Mobile App or Web Development!").multilineTextAlignment(.center).padding()
                
                NavigationLink(destination: dreams()) {
                    
                    Text("Dreams!")
                        .padding(70)
                        .background{
                            Color.yellow
                        }
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(lineWidth: 5)
                        })
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.medium)
                }
                Image(systemName: "moon").resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
            }
        }
    }


#Preview {
    futurecoding()
}
