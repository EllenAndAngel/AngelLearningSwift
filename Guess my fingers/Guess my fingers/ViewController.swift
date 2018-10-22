//
//  ViewController.swift
//  Guess my fingers
//
//  Created by 张亚荣 on 2017/10/23.
//  Copyright © 2017年 CoolCode. All rights reserved.
//

import UIKit
//var areYouRight = arc4random_uniform(6)

class ViewController: UIViewController {

    @IBOutlet weak var txtAnswerGiver: UITextField!
    @IBOutlet weak var lblAnswer: UILabel!
    
    @IBAction func btnGuess(_ sender: Any) {
        let areYouRight = arc4random_uniform(6)

        print(areYouRight)
        print(txtAnswerGiver.text!)
        
        if Int(txtAnswerGiver.text!)  == Int(areYouRight) {
            lblAnswer.text = "The answer is :" + String(areYouRight) + "."
        } else{
            lblAnswer.text = "You're wrong! Guess again!"
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

