
import UIKit

class ViewController: UIViewController {
    
    let diceFaces = ["die", "die2", "die3", "die4", "die5", "die6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView1.image = UIImage(named: "die")
        imageView2.image = UIImage(named: "die3")
        
    }
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBAction func RollDice(_ sender: UIButton){
        imageView1.image = UIImage(named: diceFaces[Int(arc4random_uniform(6))])
        imageView2.image = UIImage(named: diceFaces[Int(arc4random_uniform(6))])
    }

}

