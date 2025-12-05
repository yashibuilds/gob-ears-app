//
//  WelcomeView.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/30/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    
                        Text("Welcome to Cal Trivia!")
                        .font(.system(size: 34, weight: .bold))
                            .multilineTextAlignment(.leading)
                            .padding()
                
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Let's go!")
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
