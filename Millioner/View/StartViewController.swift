//
//  ViewController.swift
//  Millioner
//
//  Created by Галина  Бровина  on 02.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func startGame(_ sender: Any) {
    }
    @IBAction func result(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startSegue" {
            guard let destination = segue.destination as? GameGround else {return}
            destination.gameDelegate = self
            destination.rightChoise = 0
        }
    }
}
extension ViewController:Delegate{
    func goToTheStart(_ gameSession: GameSession) {
        Game.shared.persent(gameSession)
        Game.shared.clearResult()
    }
    
    
}

