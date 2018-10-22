//
//  ViewController.swift
//  StarWatcher
//
//  Created by 张亚荣 on 2017/11/5.
//  Copyright © 2017年 CoolCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var screenred = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.red 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var btnButton: UIButton!
    
    @IBAction func btnButtonClicked(_ sender: UIButton) {
        if (screenred){
            self.view.backgroundColor = UIColor.blue
        }else{
            self.view.backgroundColor = UIColor.red
        }
        screenred = !screenred
    }
}

