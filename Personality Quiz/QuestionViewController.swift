//
//  QuestionViewController.swift
//  Personality Quiz
//
//  Created by Александр Макаров on 06.09.18.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var singleStackView: UIStackView!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    
    var questions: [Question] = [
        Question(text: "Какая еда вам нравится?",
                 type: .single,
                 answers: [
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковка", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle)
            ]),
        
        Question(text: "Что вам нравится делать?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Есть", type: .dog),
                    Answer(text: "Спать", type: .cat),
                    Answer(text: "Прыгать", type: .rabbit),
                    Answer(text: "Плавать", type: .turtle)
            ]),
        
        Question(text: "Насколько вам нравятся поездки на машине",
                 type: .ranged,
                 answers: [
                    Answer(text: "Ненавижу", type: .cat),
                    Answer(text: "Немного нервничаю", type: .rabbit),
                    Answer(text: "Почти не замечаю", type: .turtle),
                    Answer(text: "Обожаю их", type: .dog)
            ])
    ]
    
    var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Вопрос № \(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
    }
    
}
