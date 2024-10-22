//
//  ViewController.swift
//  eggTimer
//
//  Created by Балнур Бектасова on 19.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.progress = 0.0
    }
    
    @IBAction func startTime(_ sender: UIButton){
        guard
            let buttonTitle = sender.titleLabel!.text
        else{return}
        
        let eggTime = eggTime(egg: buttonTitle)
        let culcProgress = culcProgress(eggTime: eggTime)
        
        progressView.progress = Float(culcProgress)
        
        print(culcProgress)
    }
    
    func eggTime(egg: String) -> Int{
        var eggTime: Int = 0
        
        if egg == "hard"{
            eggTime = 7
        }
        else if egg == "medium"{
            eggTime = 5
        }
        else if egg == "soft"{
            eggTime = 3
        }
        else {eggTime = -1}
        
        return eggTime
    }
    
    func culcProgress(eggTime: Int) -> Float{
        return 1/Float(eggTime)
    }


}

