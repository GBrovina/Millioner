//
//  gameGround.swift
//  Millioner
//
//  Created by Галина  Бровина  on 02.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import UIKit

protocol Delegate:class{
    func goToTheStart()
}
protocol informationDelagate:class {
    func bringInformation(_ quantity:Int)
    func question(_ question:Int)
}

class GameGround: UIViewController{

    private var questions = [Questions]()
    var number = Int()
    var answerNumber = Int()
    weak var gameDelegate:Delegate?
    weak var gameInfo:informationDelagate?
    
    @IBOutlet weak var questionText: UITextView!
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func buttonFirst(_ sender: Any) {
        if answerNumber != 0{
           goToTheStart()
            }else{
            goNext()
            
        }
    }
    @IBAction func buttonSecond(_ sender: Any) {
        if answerNumber != 1{
             goToTheStart()
            
            }else{
            goNext()
               }
    }
    @IBAction func buttonTrird(_ sender: Any) {
        if answerNumber != 2{
             goToTheStart()
            
            }else{
            goNext()
            
               }
    }
    @IBAction func buttonFours(_ sender: Any) {
        if answerNumber != 2{
            goToTheStart()
            
               }else{
            goNext()
            
               }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameDelegate = self
       
        questions = [Questions(questions:"Что не бывает морским?" , answer:["рельс","огурец","гребешок","узел"], rightAnswers:0),
                     Questions(questions:"В какой стране появилась мандолина?", answer:["Испания","Италия","Венгрия","Греция"], rightAnswers:1),
                     Questions(questions:"Где в древней греции можно было увидеть надпись:Здесь живут мертвые и говорят немые?", answer:["на кладбищах","в больницах","в библиотеках","в тюрьмах"], rightAnswers:2),
                     Questions(questions:"Какой химический элемент назван в честь злого подземного гнома?", answer:["Гафний","Кобальт","Бериллий","Теллур"], rightAnswers:2)
                    ]
        goNext()
        question(questions.count)
        // Do any additional setup after loading the view.
    }
    func goNext(){
        if questions.count>0{
            number = 0
            questionText.text = questions[number].questions
            answerNumber = questions[number].rightAnswers
            for i in 0..<buttons.count{
                buttons[i].setTitle(questions[number].answer[i], for: .normal)
            }
            questions.remove(at: number)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
extension GameGround:Delegate{
   
    func goToTheStart() {
        self.dismiss(animated: true, completion: nil)
    }
}

extension GameGround:informationDelagate{
    func question(_ question: Int) {
        self.gameInfo?.question(questions.count)
    }

    func bringInformation(_ quantity: Int) {
        self.gameInfo?.bringInformation(questions.count)
    }

}
