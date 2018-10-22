//
//  ViewController.swift
//  C - F
//
//  Created by 张亚荣 on 2017/11/27.
//  Copyright © 2017年 CoolCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numOconverts: UILabel!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var ResultLabel: UILabel!
    var numoloOne = 0
    @IBAction func ClickedConvert(_ sender: Any) {
        if let result = TextField.text{
            if (result == "") {
                return
            }
            else{
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    ResultLabel.text = String(output)
                     numoloOne = numoloOne+10000
                    numOconverts.text = String(numoloOne)
                }
            }
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

