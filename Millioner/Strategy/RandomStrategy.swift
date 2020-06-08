//
//  RandomStrategy.swift
//  Millioner
//
//  Created by Галина  Бровина  on 07.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import Foundation

final class RandomStrategy:QuestionStategy{
    func showArrayOfQuestions(_ questions: [Questions]) -> [Questions] {
        var newQuestions = questions
        var newArrayQuestions:[Questions] = []
        for _ in 0 ..< newQuestions.count{
            let index = Int.random(in: 0 ..< newQuestions.count)
            newArrayQuestions.append(newQuestions[index])
            newQuestions.remove(at: index)
        }
        
        return newArrayQuestions
    }
}
