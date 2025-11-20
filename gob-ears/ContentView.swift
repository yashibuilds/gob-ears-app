//
//  ContentView.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/19/25.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 0/255, green: 74/255, blue: 174/255)
    let accentColor = Color(red: 255/255, green: 195/255, blue: 27/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("After whom is the fountain in Sproul Plaza named?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
