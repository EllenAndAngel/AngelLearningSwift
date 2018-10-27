//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController{
    
    var sound: AVAudioPlayer?
    let soundA = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectSound : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func notePressed(_ sender: UIButton) {
        selectSound = soundA[sender.tag-1]
        print(selectSound)
        playSound()
        
        
}
        
        
    func playSound(){
        let soundURL = Bundle.main.url(forResource: selectSound, withExtension: "wav")
            do{
                sound = try? AVAudioPlayer(contentsOf: soundURL!)
                sound?.play()
            }
        }

}

