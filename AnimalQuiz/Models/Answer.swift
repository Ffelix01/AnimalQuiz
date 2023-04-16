//
//  Answer.swift
//  AnimalQuiz
//
//  Created by Felix on 16.04.23.
//

struct Answer {
  let text: String
  let type: EmojiType
}

enum EmojiType: Character {
  case angry = "😠"
  case crying = "😢"
  case raised = "🤨"
  case grinning = "😃"

  var defition: String {
    switch self {
    case .angry:
      return "Злой"
    case .crying:
      return "Плачущий"
    case .raised:
      return "Недовольный"
    case .grinning:
      return "Радостный"
    }
  }
}
