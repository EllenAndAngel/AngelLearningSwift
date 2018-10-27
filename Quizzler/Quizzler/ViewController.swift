//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score = 0
    var rightL: Int = 0
    var wrongL: Int = 0
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var right: UILabel!
    @IBOutlet weak var wrong: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2{
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
      
        scoreLabel.text = String(score)
        progressLabel.text = "\(questionNumber + 1) /13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
    }
    

    func nextQuestion() {
        if questionNumber <= 12{
         updateUI()
        
        questionLabel.text = allQuestions.list[questionNumber].questionText
        } else {
            let alert = UIAlertController(title: "Hi", message: "You've finished the quiz. Do you wanna restart?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart?", style: .default, handler: {(UIAlertAction)in self.startOver()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer{
            score += 1
            rightL = rightL + 1
            right.text = "Right: \(rightL)"
            scoreLabel.text = "\(rightL)"
        }else{
            
            wrongL = wrongL + 1
            wrong.text = "Wrong: \(wrongL)"
            
        }
    }
    
    
    func startOver() {
        score = 0
       questionNumber = 0
        nextQuestion()
        right.text = "0"
        wrong.text = "0"
        wrongL = 0
        rightL = 0
    }
    

    
}
