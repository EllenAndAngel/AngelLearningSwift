//
//  ViewController.swift
//  AngelCalculator
//
//  Created by 张亚荣 on 2017/11/9.
//  Copyright © 2017年 CoolCode. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    var op: Operator = Operator.nup
    var currentOperation = ""
    
    @IBAction func BLUEBUTTS(_ sender: Any) {
        self.view.backgroundColor = UIColor.blue
    }
    
    @IBAction func REDBUTTS(_ sender: Any) {
        self.view.backgroundColor = UIColor.red
    }
    var calcul: calcu = calcu.enteringNum
    var firstvalue: String = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blue
        
    }
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func numberclicked(_ sender: UIButton){
        updateDisplay(number: String(sender.tag))
        
    }
    
    func updateDisplay(number: String){
        if calcul == calcu.newnumStarted{
            if let num = answer.text{
                if num != ""{
                    firstvalue = num
                }
            }
            calcul = calcu.enteringNum
            answer.text = number
        }
        else if calcul == calcu.enteringNum{
            answer.text = answer.text! + number
        }
        
    }
    
    @IBAction func Opclicked(_ sender: UIButton){
        calcul = calcu.newnumStarted
        if let num = answer.text{
            if num != ""{
                firstvalue = num
                answer.text = ""
            }
        }
        switch sender.tag {
        case 11:
            currentOperation = Operator.add.rawValue
        case 12:
            currentOperation = Operator.divide.rawValue
        case 13:
            currentOperation = Operator.multiply.rawValue
        case 14:
            currentOperation = Operator.minus.rawValue
            
        default:
            return
        }
        
        
        
    }
    @IBAction func equalsclicked(_ sender: UIButton){
        calculatesum()
        
    }
    
    func calculatesum () {
        if (firstvalue.isEmpty) {
            return
        }
        var result = " "
        if currentOperation == Operator.multiply.rawValue{
            result = "\(Double(firstvalue)! * Double(answer.text!)!)"
        }else if currentOperation == Operator.divide.rawValue{
            result = "\(Double(firstvalue)! / Double(answer.text!)!)"
        }else if currentOperation == Operator.minus.rawValue{
            result = "\(Double(firstvalue)! - Double(answer.text!)!)"
        }else if currentOperation == Operator.add.rawValue{
            result = "\(Double(firstvalue)! + Double(answer.text!)!)"
        }
        answer.text = result
        calcul = calcu.newnumStarted
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


