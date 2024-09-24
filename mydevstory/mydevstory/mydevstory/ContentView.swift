//
//  ContentView.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/9/24.
//
/* ************** Part 1 ****************
 * Views: text, image, datePicker, button,NavigationView, colorPicker, section, form
 * Modifiers: padding, background, foregroundColor, shadow,foregroundStyle, fontWeight, multilineTextAlignment, border, frame, scaleEffect, offSet, blur, system, clipShape
 * Stacks
     * VStack: contentView, startingcode, cucompsci
     * HStack: apcs, cuCTD
     * ZStack: tulane
 * Cool enum on startingcode
 *************** Part 2 ****************
 * I tried refactoring repetative coding with the BigNavButton struct for all my buttons, but I change them all in so many different ways that it was not translating well at all :(
 * I used State variables in contentview, APCS, IntroSwift, and CTD
 */


import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()
    let TargetDate = Calendar.current.date(from: DateComponents(year: 2002, month: 5, day: 22, hour: 20, minute: 40))!

    var body: some View {
        NavigationStack {
            VStack {
               
                Text("Hi! I'm Ari!")
                    .bold()
                    .font(.largeTitle)
                Image(systemName: "teddybear")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("I was born and raised in Boulder Colorado.")
                    .padding(.bottom, 5)
                Text(Constants.ViewWithFrame)
                                        .background(Color.pink.opacity(0.3))
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.bottom, 5)
                Text("My middle name is my mom's last name, so I kind of have 2 last names except I don't")
                    .padding(.bottom, 5)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                Text("Guess when I was born!!!").bold()
                DatePicker("Select a date", selection: $selectedDate)
                
                if Calendar.current.isDate(selectedDate, equalTo: TargetDate, toGranularity: .minute)
                //ChatGPT helped me with the toGranularity and equalT part
                {
                          Text("You got it right!") .foregroundColor(.green)
                       } else {
                           Text("That's not my birthday! Try again!")
                               .foregroundColor(.red)
                       }
                    
                NavigationLink("Click me to learn more!")
                {
                    StartingCode()
                }
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


#Preview {
    ContentView()
}

private enum Constants {
    static let ViewWithFrame = "My favorite animal is the alpaca"
}
