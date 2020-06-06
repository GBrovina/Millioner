//
//  Game.swift
//  Millioner
//
//  Created by Галина  Бровина  on 03.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import Foundation
import UIKit

class Game:Codable{
    static let shared = Game()
    var gameSession:GameSession?
    private init(){}
    
    var results:[Int] = []
    func persent(_ result:GameSession){
        let percent = (self.gameSession?.rightAnswerQuantity ?? 1)*100 / (self.gameSession?.questionQuantity ?? 1)
        print(percent)
        results.append(percent)
        print("Percent was found")
    }
    
    func addResults(_ results: [Int]) {
           results.forEach { (result) in
               self.results.append(result)
               print("Record was added")
           }
       }
    
    func clearResult(){
        self.gameSession = nil
    }
    
}
