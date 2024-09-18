//
//  apcs.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct apcs: View {
    
    @State private var isTextVisible = false
    
    
    var body: some View {
        VStack{
            Text("My First Coding Class!")
                .bold()
        }
        HStack{
            Text("My first real computer science class was AP Comp Sci! I took it my junior year. It was all in Java.").padding()
            Text("After this class I realized I wanted to pursue CompSci in college.").padding()
        }
        VStack{
            Button(action: {
                
                self.isTextVisible.toggle()
            }) {
                Text("See what I got on the exam")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(hue: 0.569, saturation: 1.0, brightness: 1.0))
                    .cornerRadius(10)
            }
            
            if isTextVisible {
                Text("I got a 3/5 lol, I'm not that cool")
                    .padding()
                    .transition(.scale)
            }
        
                NavigationLink(destination: introswift()) {
                    Text("Click me!")
                        .padding(70)
                        .background{
                            Color.orange
                        }
                        .overlay(content: {
                            Ellipse()
                                .stroke(lineWidth: 5)
                        })
                        .foregroundStyle(.white)
                        .font(.title3)
                        .fontWeight(.medium)
                }
            }
        }
    }
    
#Preview {
    apcs()
}
