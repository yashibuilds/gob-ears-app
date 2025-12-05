//
//  ContentView.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/19/25.
//

import SwiftUI

struct GameView: View {
    @State var mainColor = GameColor.main
    let question = Question.allQuestions[0]
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
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
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                          }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                          })
                    }
                }
                .padding()
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    GameView()
}
