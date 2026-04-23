//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by it on 18.04.2026.
//

import Foundation
struct AlertModel {
    var title: String
    var message: String
    var buttonText: String
    var completion: () -> Void
}
