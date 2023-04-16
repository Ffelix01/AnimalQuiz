//
//  Question.swift
//  AnimalQuiz
//
//  Created by Felix on 16.04.23.
//

enum ResponceType {
  case single
  case multiple
  case range
}

struct Question {
  let text: String
  let type: ResponceType
  let answers: [Answer]
}

extension Question {
  static func getQuestion() -> [Question] {
    return [
      Question(text: "Какую пищу вы предпочитаете?", type: .single, answers: [
        Answer(text: "Стейк", type: .grinning),
        Answer(text: "Рыба", type: .raised),
        Answer(text: "Морковь", type: .crying),
        Answer(text: "Кукуруза", type: .angry)
      ] ),
      Question(text: "Что вы любите делать?", type: .multiple, answers: [
        Answer(text: "Плавать", type: .grinning),
        Answer(text: "Обниматься", type: .raised),
        Answer(text: "Есть", type: .crying),
        Answer(text: "Спать", type: .angry)
      ] ),
      Question(text: "Любите ли вы поездки на машине?", type: .range, answers: [
        Answer(text: "Ненавижу", type: .grinning),
        Answer(text: "Люблю", type: .raised),
        Answer(text: "Ненавижу", type: .crying),
        Answer(text: "Люблю", type: .angry)
      ] )
    ]
  }
}
