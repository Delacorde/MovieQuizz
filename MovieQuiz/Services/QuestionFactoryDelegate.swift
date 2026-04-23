//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by it on 17.04.2026.
//

import Foundation
protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
}
