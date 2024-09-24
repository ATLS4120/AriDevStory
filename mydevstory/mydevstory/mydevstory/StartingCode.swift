//
//  startingcode.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/9/24.
//

import SwiftUI

struct StartingCode: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("If you were curious, I was born on May 22, 2002 at 8:40PM.")
                    .fontWeight(.ultraLight)
                
                Text("My First Coding Class!")
                    .bold()
                
                Text("In 8th grade, I took my first computer class that introduced coding concepts: we learned scratch.").fontWeight(.medium).foregroundColor(Color(hue: 0.749, saturation: 0.572, brightness: 0.878)).border(.purple, width: 0.5).padding()
                
                Text(TextConstants.WaveMessage)
                    .multilineTextAlignment(.center)
                    .padding(.trailing)
                
                Text(TextConstants.FriendsIssues) .shadow(color: .orange, radius: 2, x: 0, y: 2)
                
                Text(TextConstants.ParentConference).multilineTextAlignment(.center).scaleEffect(1.1)
                
                Text(TextConstants.DyslexicIssues).foregroundColor(Color.purple).offset(x:9)
                
                Text(TextConstants.CodingLove).blur(radius: 0.8)
                
                NavigationLink(destination: APCS()){
                    BigNavButton(message: "Highschool!",
                    backgroundColor: .green,
                    foregroundColor: .white,
                    font: .title2,
                    fontWeight: .medium)
                   
                }
               
                .frame(width: 145, height: 145)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.green)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.white, lineWidth: 5)
                        )
                )
                
            }
            
            .padding()
            
        }
    }
  
}
#Preview {
    StartingCode()
}

enum TextConstants {
    static let WaveMessage = """
        I remember thinking it was so much fun. We had to make our character raise its hand, I did that in a couple seconds so I made him wave.
    """
    
    static let FriendsIssues = """
        However, when I looked at my friends around me, they couldn't even get their characters to move.\n
    """
    
    static let ParentConference = """
        Later that year at parent teacher conferences, my dad came home and reported to me that my computer teacher spoke very highly of my abilities.\n
    """
        
    static let DyslexicIssues = """
        That was super exciting because, back then, I was bad at school. I had been diagnosed with dyslexia in middle school and was behind in almost all subjects.\n
    """
    
    static let CodingLove = """
        Coding was the first class I was not only good at, but I enjoyed and top of the class! It was even more exciting because my dad is a computer engineer and we had something to bond over!\n
    """
}
