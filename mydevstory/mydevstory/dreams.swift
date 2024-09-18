//
//  dreams.swift
//  mydevstory
//
//  Created by Ari Guzzi on 9/10/24.
//

import SwiftUI

struct dreams: View {
    var body: some View {
            VStack{
                Text("Dreams").font(.largeTitle).bold()
                Image(systemName: "rainbow").foregroundColor(Color(hue: 0.824, saturation: 0.443, brightness: 0.88)).font(.system(size: 100))
                    
                Text(Constants.dreams).padding()
                
               
            }
        }
    }


#Preview {
    dreams()
}
private enum Constants {
    static let dreams = "I can't think of anymore coding things to say about my life, my dream in life is to open a therapy farm with highland cows, alpacas, and goats. I don't want to do all the other farming work, so by calling it a therapy farm it's really a glorified petting zoo HAHA"
}
