//
//  futurecoding.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct FutureCoding: View {
    var body: some View {
        Text("I hope someone hires me...").font(.largeTitle)
        Text("After graduation, I want to pursue work in Mobile App or Web Development!").multilineTextAlignment(.center).padding()
        
        NavigationLink("Dreams!") {Dreams()}
        
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
        
        Image(systemName: "moon").resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}


#Preview {
    FutureCoding()
}
