//
//  ViewController.swift
//  DragonYears
//
//  Created by 张亚荣 on 2017/10/22.
//  Copyright © 2017年 CoolCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHintAge: UILabel!
    @IBOutlet weak var lblDragonYears: UILabel!
    @IBOutlet weak var txtDragonAge: UITextField!

    @IBAction func btnCalculateAge(_ sender: Any) {
        let randomThing = Int(txtDragonAge.text!)! / 3
        print(randomThing)
        lblHintAge.isHidden=false
        lblDragonYears.text = String(randomThing)
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblHintAge.isHidden=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

