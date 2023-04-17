//
//  QuestionViewController.swift
//  AnimalQuiz
//
//  Created by Felix on 16.04.23.
//

import UIKit

class QuestionsViewController: UIViewController {

  @IBOutlet var progressView: UIProgressView!
  @IBOutlet var rangedSlider: UISlider!
  @IBOutlet var questionLabel: UILabel!

  @IBOutlet var singleStackView: UIStackView!
  @IBOutlet var multipleStackView: UIStackView!
  @IBOutlet var rangedStackView: UIStackView!


  @IBOutlet var singleButtons: [UIButton]!
  @IBOutlet var multipleLabels: [UILabel]!
  @IBOutlet var rangedLabels: [UILabel]!

  // MARK: Properties
  private let questions = Question.getQuestion()
  private let questionIndex = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }
}

// MARK: Private
extension QuestionsViewController {
  private func updateUI() {
    // Hide stacks
    for stackView in [singleStackView, multipleStackView, rangedStackView] {
      stackView?.isHidden = true
    }
    // get current question
    let currentQuestion = questions[questionIndex]

    // set current question for label
    questionLabel.text = currentQuestion.text

    // calculate progress
    let totalProgress = Float(questionIndex) / Float(questions.count)

    // set progress for progressView
    progressView.setProgress(totalProgress, animated: true)

    title = "Вопрос № \(questionIndex + 1) из \(questions.count)"

    // show current stackViews
  }

  private func showCurrentStackView(for type: ResponceType) {
    switch type {
    case .single:
      break
    case .multiple:
      break
    case .range:
      break
    }
  }

  private func showSingleStackView(with answers: [Answer]) {
    singleStackView.isHidden = false

    for (button, answers) in zip(singleButtons, answers) {
      button.setTitle(answers.text, for: .normal)
    }
  }
}
