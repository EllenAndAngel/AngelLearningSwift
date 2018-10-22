//
//  ViewController.swift
//  trafficLight
//
//  Created by 张亚荣 on 2017/11/5.
//  Copyright © 2017年 CoolCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        greenButtonOut.backgroundColor = UIColor.green
        redButtonOut.backgroundColor = UIColor.red
        yellowButtonOut.backgroundColor = UIColor.yellow
        self.view.backgroundColor = UIColor.black
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func clickForReset(_ sender: Any) {
        greenButtonOut.backgroundColor = UIColor.green
        yellowButtonOut.backgroundColor = UIColor.yellow
        redButtonOut.backgroundColor = UIColor.red
    }
    @IBOutlet weak var greenButtonOut: UIButton!
    @IBAction func greenButton(_ sender: Any) {
        greenButtonOut.backgroundColor = UIColor.green
        redButtonOut.backgroundColor = UIColor.blue
        yellowButtonOut.backgroundColor = UIColor.blue
    }
    
    
    @IBOutlet weak var yellowButtonOut: UIButton!
    @IBAction func yellowButton(_ sender: Any) {
        yellowButtonOut.backgroundColor = UIColor.yellow
        
        redButtonOut.backgroundColor = UIColor.blue
        greenButtonOut.backgroundColor = UIColor.blue
    }
    
    @IBOutlet weak var redButtonOut: UIButton!
    
    @IBAction func redButton(_ sender: Any) {
        redButtonOut.backgroundColor = UIColor.red
        yellowButtonOut.backgroundColor = UIColor.blue
        greenButtonOut.backgroundColor = UIColor.blue
    }
    
}


