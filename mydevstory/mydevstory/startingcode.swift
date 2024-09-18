//
//  startingcode.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/9/24.
//

import SwiftUI

struct startingcode: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("If you were curious, I was born on May 22, 2002 at 8:40PM.")
                    .fontWeight(.ultraLight)
                
                Text("My First Coding Class!")
                    .bold()
                
                Text("In 8th grade, I took my first computer class that introduced coding concepts: we learned scratch.").fontWeight(.medium).foregroundColor(Color(hue: 0.749, saturation: 0.572, brightness: 0.878)).border(.purple, width: 0.5).padding()
                
                Text(TextConstants.waveMessage)
                    .multilineTextAlignment(.center)
                    .padding(.trailing)
                
                Text(TextConstants.friendsIssues) .shadow(color: .orange, radius: 2, x: 0, y: 2)
                
                Text(TextConstants.parentConference).multilineTextAlignment(.center).scaleEffect(1.1)
                
                Text(TextConstants.dyslexicIssues).foregroundColor(Color.purple).offset(x:9)
                
                Text(TextConstants.codingLove).blur(radius: 0.8)
                
                
                NavigationLink(destination: apcs()) {
                    
                    Text("Click me to hear about highschool!")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.medium)
                        .frame(width: 140, height: 140)
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color.green)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
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
    startingcode()
}

enum TextConstants {
    static let waveMessage = """
        I remember thinking it was so much fun. We had to make our character raise its hand, I did that in a couple seconds so I made him wave.
    """
    
    static let friendsIssues = """
        However, when I looked at my friends around me, they couldn't even get their characters to move.\n
    """
    
    static let parentConference = """
        Later that year at parent teacher conferences, my dad came home and reported to me that my computer teacher spoke very highly of my abilities.\n
    """
        
    static let dyslexicIssues = """
        That was super exciting because, back then, I was bad at school. I had been diagnosed with dyslexia in middle school and was behind in almost all subjects.\n
    """
    
    static let codingLove = """
        Coding was the first class I was not only good at, but I enjoyed and top of the class! It was even more exciting because my dad is a computer engineer and we had something to bond over!\n
    """
}
