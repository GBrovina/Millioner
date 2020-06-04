//
//  Game.swift
//  Millioner
//
//  Created by Галина  Бровина  on 03.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import Foundation
import UIKit

class Game{
    static let shared = Game()
    var gameSession:GameSession?
    private init(){}
    
    private(set) var results:[GameSession] = []
    func persent(_ result:GameSession){
        let persent = (result.rightAnswerQuantity!/result.questionQuantity)*100
    }
    
    func clearResult(){
        self.results = []
    }
    
}
