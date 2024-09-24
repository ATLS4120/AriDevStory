//
//  tulane.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct Tulane: View {
    var body: some View {
        Text("Tulane!").bold()
        VStack{
            Text(Constants.TulaneMessage).padding()
        }
        .background(Color.green)
 
        ZStack{
            NavigationLink("To CU!") {CUCompSci() }
                    
                        .padding(70)
                        .background{
                            Color.purple
                        }
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(lineWidth: 5)
                        })
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.medium)
                }
            Image(systemName: "smiley")
                .offset(y: -80)
                .font(.system(size: 40))
                
               
            
        
        }
    
    }


#Preview {
    Tulane()
}
private enum Constants {
    static let TulaneMessage = "I started college at Tulane University where I took intro and data structures. Intro was all python and data structures was 1/3 java, 1/3 C, 1/3 C++. \n I decided to transfer schools because they only had a 'coordinate major.' So I would be recieving a business major, and (back then) I wanted to go into product or project management. I spoke to a couple people in the industry who said I needed to get a technical degree."
}
