//
//  ContentView.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/9/24.
//
/* Views: text, image, datePicker, button,NavigationView, colorPicker, section, form
 * Modifiers: padding, background, foregroundColor, shadow,foregroundStyle, fontWeight, multilineTextAlignment, border, frame, scaleEffect, offSet, blur, system, clipShape
 * Stacks
     * VStack: contentView, startingcode, cucompsci
     * HStack: apcs, cuCTD
     * ZStack: tulane
 * Cool enum on startingcode
 */


import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()
    let targetDate = Calendar.current.date(from: DateComponents(year: 2002, month: 5, day: 22, hour: 20, minute: 40))!

    var body: some View {
        NavigationView {
            VStack {
               
                Text("Hi! I'm Ari!")
                    .bold()
                    .font(.largeTitle)
                Image(systemName: "teddybear")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("I was born and raised in Boulder Colorado.\n")
                Text(Constants.viewWithFrame)
                                        .background(Color.pink.opacity(0.3))
                                        .frame(maxWidth: .infinity, alignment: .center)
                                       
                Text("\nMy middle name is my mom's last name, so I kind of have 2 last names except I don't\n")
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                Text("Guess when I was born!!!").bold()
                DatePicker("Select a date", selection: $selectedDate)
                
                if Calendar.current.isDate(selectedDate, equalTo: targetDate, toGranularity: .minute) 
                //ChatGPT helped me with the toGranularity and equalT part
                {
                          Text("You got it right!") .foregroundColor(.green)
                       } else {
                           Text("That's not my birthday! Try again!")
                               .foregroundColor(.red)
                       }
                    
                NavigationLink(destination: startingcode()) {
                    
                    Text("Click me to learn more!")
                        .foregroundColor(.white)
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(width: 140, height: 140)
                                .background(
                                    Circle()
                                        .fill(Color.purple)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.white, lineWidth: 5)
                                        )
                                )
                }
                    
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

private enum Constants {
    static let viewWithFrame = "My favorite animal is the alpaca"
}
