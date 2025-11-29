//
//  Game.swift
//  gob-ears
//
//  Created by Yashi Surapaneni on 11/29/25.
//

struct Game {
    private let questions = Question.allQuestions.shuffled()
    private(set) var currentQuestionIndex = 0
    private(set) var guesses: [Question: Int] = [:]
    private(set) var isOver = false
    
//    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
//        guesses[currentQuestion] = index
//    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
