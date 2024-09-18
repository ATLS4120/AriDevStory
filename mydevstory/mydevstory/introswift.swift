//
//  introswift.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct introswift: View {
    @State private var buttonColor: Color = .blue
    var body: some View {
            VStack{
                Text("Intro to Swift")
                    .bold()
                Text("After APCS, I took a semester long into to swift elective my senior year.").padding()
                Text("It was fine. Covid hit so we never our projects.").padding()
                Form {
                    Section() {
                        ColorPicker("Choose button color", selection: $buttonColor)
                    }
                }
                    Section {
                        NavigationLink(destination: tulane()) {
                            
                            Text("Click me!")
                                .padding(70)
                                .background{
                                    buttonColor
                                }
                                .overlay(content: {
                                    Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                        .stroke(lineWidth: 5)
                                })
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .fontWeight(.medium)
                        }
                    }
                }
            }
        }
    


#Preview {
    introswift()
}
