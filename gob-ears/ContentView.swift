//
//  ContentView.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/19/25.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 0/255, green: 74/255, blue: 174/255)
    let question = Question(questionText: "After whom is the fountain in Sproul Plaza named?", possibleAnswers: ["Carol Christ", "Les Richter", "Ludwig von Schwarenburg", "Mario Savio"], correctAnswerIndex: 2)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                HStack {
                    ForEach(0..<question.possibleAnswers.count) {
                        answerIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                          }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                          })
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
