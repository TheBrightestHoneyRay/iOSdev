//
//  ViewController.swift
//  xylophonee
//
//  Created by Балнур Бектасова on 11.10.2024.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var notes: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playSound(_ sender: UIButton){
        print("Played")
    }


}

