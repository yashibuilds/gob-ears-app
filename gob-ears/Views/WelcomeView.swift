//
//  WelcomeView.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/30/25.
//

import SwiftUI

struct WelcomeView: View {
    let accentColor = Color(red: 255/255, green: 195/255, blue: 27/255)
    let mainColor = Color(red: 0/255, green: 74/255, blue: 174/255)
    
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            HStack {
                                Spacer()
                                Text("Okay, let's go!")
                                    .font(.body)
                                    .bold()
                                    .padding()
                                Spacer()
                            }.background(accentColor)
                        })
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
