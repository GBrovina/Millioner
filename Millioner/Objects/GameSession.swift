//
//  GameSession.swift
//  Millioner
//
//  Created by Галина  Бровина  on 03.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import Foundation
import UIKit


class GameSession:Codable{
    var questionQuantity:Int
    var rightAnswerQuantity:Int
    
    init(questionQuantity:Int,rightAnswerQuantity:Int) {
        self.questionQuantity = questionQuantity
        self.rightAnswerQuantity = rightAnswerQuantity
    }

    
}

