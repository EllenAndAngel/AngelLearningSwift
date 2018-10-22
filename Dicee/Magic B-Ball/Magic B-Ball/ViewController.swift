//
//  ViewController.swift
//  Magic B-Ball
//
//  Created by 张亚荣 on 2018/10/5.
//  Copyright © 2018年 Angel Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var rBall = 0
    let bArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
   
    
    @IBOutlet weak var randomBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uBall()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func button(_ sender: UIButton) {
        uBall()
        
    }
    
    func uBall(){
        rBall = Int(arc4random_uniform(5))
        randomBallImage.image = UIImage(named: bArray[rBall])
    
    
}
    



    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        uBall()
    }




}
