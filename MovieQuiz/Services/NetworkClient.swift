//
//  NetworkClient.swift
//  MovieQuiz
//
//  Created by it on 05.05.2026.
//

import Foundation
struct NetworkClient {
    enum NetworkError: Error{
        case codeError
    }
    func fetch(url: URL, handler: @escaping (Result<Data, Error>) -> Void) {
          let request = URLRequest(url: url)
          
          let task = URLSession.shared.dataTask(with: request) { data, response, error in
              // Проверяем, пришла ли ошибка
              if let error = error {
                  handler(.failure(error))
                  return
              }
              let num1 = 200
              let num2 = 300
              // Проверяем, что нам пришёл успешный код ответа
              if let response = response as? HTTPURLResponse,
                  response.statusCode < num1 || response.statusCode >= num2 {
                  handler(.failure(NetworkError.codeError))
                  return
              }
              
              // Возвращаем данные
              guard let data = data else { return }
              handler(.success(data))
          }
          
          task.resume()
      }
  }
