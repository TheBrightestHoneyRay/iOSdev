//
//  ViewController.swift
//  final-exam-proj
//
//  Created by Балнур Бектасова on 27.12.2024.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scaleAnim(logoImage)

        // Do any additional setup after loading the view.
    }
    
    func scaleAnim(_ sender: UIImageView){
        
        UIView.animate(withDuration: 1.0,
            animations: {
            sender.transform = CGAffineTransformMakeScale(1.3,1.3)
            },
            completion: { _ in
            UIView.animate(withDuration: 1.0) {
                    sender.transform = CGAffineTransform.identity
                }
            })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
