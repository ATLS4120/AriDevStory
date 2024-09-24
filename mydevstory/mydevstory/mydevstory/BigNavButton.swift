//
//  BigNavButton.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/23/24.
//

import SwiftUI

struct BigNavButton: View {
    let message: String
    let backgroundColor: Color
    let foregroundColor: Color
    let font: Font
    let fontWeight: Font.Weight
 
    init(
        message: String,
        backgroundColor: Color = .purple,
        foregroundColor: Color = .white,
        font: Font = .largeTitle,
        fontWeight: Font.Weight = .medium
    ) {
        self.message = message
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.font = font
        self.fontWeight = fontWeight
    }
    
    var body: some View {
        Text(message)
            .padding(20)
            .background{
                backgroundColor
            }
            .foregroundStyle(foregroundColor)
            .font(font)
            .fontWeight(fontWeight)
            
        
    }
}


#Preview {
    BigNavButton(
        message: "CTD!"
      )
}
