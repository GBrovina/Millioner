//
//  GameSession.swift
//  Millioner
//
//  Created by Галина  Бровина  on 03.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import Foundation
import UIKit


class GameSession{
    var questionQuantity:Int!
    var rightAnswerQuantity:Int!
    
    

    
}
extension GameSession:informationDelagate{
    
    func question(_ question: Int) {
        self.questionQuantity = question
        print (question)
    }
    
    func bringInformation(_ quantity: Int) {
        self.rightAnswerQuantity = quantity
    }
}
