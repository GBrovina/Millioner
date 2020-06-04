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
        let newGameSession = GameSession()
        Game.shared.gameSession = newGameSession
    }
    @IBAction func result(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

