//
//  Question.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/22/25.
//

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "In the early 1900s, what articles of clothing — the grungier the better — were status symbols for Berkeley students?", possibleAnswers: ["Hats", "Old socks", "Capes", "Discarded Stanford merch"], correctAnswerIndex: 0),
        
        Question(questionText: "The Axe, the Stare Down, the Mud Game, and The Play are all parts of what long-standing rivalry?", possibleAnswers: ["Greek Rush", "Your first college romance", "Cal Quiddich", "The Big Game"], correctAnswerIndex: 3)
    ]
}
