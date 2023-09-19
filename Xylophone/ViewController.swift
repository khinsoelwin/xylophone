//
//  ViewController.swift
//  Xylophone
//
//  Created by KHIN SOE LWIN on 2023/03/18.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func pressedBtn(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
     }

     func playSound(soundName: String) {
         let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
         player = try! AVAudioPlayer(contentsOf: url!)
         player.play()
     }
    
}

