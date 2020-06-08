//
//  SettingsViewController.swift
//  Millioner
//
//  Created by Галина  Бровина  on 07.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settings: UISegmentedControl!
    
    private var difficulty:Difficulty{
        switch settings.selectedSegmentIndex {
        case 0:
            return .normal
        case 1:
            return .random
        default:
            return .random
        }
    }
    
    @IBAction func Exit(_ sender: Any) {
        self.dismiss(animated:true , completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "settingsSegue" {
            guard let destination = segue.destination as? StartViewController else {return}
            destination.difficaltyChoise = self.difficulty
        }
    }
    

}
