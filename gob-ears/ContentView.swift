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
                    Button(action: {print("Tapped on Choice 1")}, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    
                    Button(action: {print("Tapped on Choice 2")}, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    
                    Button(action: {print("Tapped on Choice 3")}, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    
                    Button(action: {print("Tapped on Choice 4")}, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })
                }
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
