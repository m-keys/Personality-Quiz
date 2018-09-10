//
//  Question.swift
//  Personality Quiz
//
//  Created by Александр Макаров on 10.09.18.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return ""
        case .cat:
            return ""
        case .rabbit:
            return ""
        case .turtle:
            return ""
        }
    }
}
