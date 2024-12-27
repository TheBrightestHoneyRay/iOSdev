
import UIKit
import Kingfisher

class PinDetailViewController: UIViewController {

    
    var passedPinId = 2
    var passedPinLabel: String = "Achiles"
    var passedPinImage: String = "https://static.wikia.nocookie.net/disney/images/d/d3/Vlcsnap-2015-05-06-23h04m15s601.png"
    var currentPin: Pin!
    
    @IBOutlet weak var pinImageView: UIImageView!
    @IBOutlet weak var pinLabel: UILabel!
    @IBOutlet weak var addPinButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        pinLabel.text = passedPinLabel
        pinImageView.kf.setImage(with: URL(string: passedPinImage))
        currentPin = pins[passedPinId]
        
        addPinButton.layer.cornerRadius = 5
        showPinned()
   }
    
    @IBAction func pinUnPin(_ sender: UIButton){
        if currentPin.isBoard{
            
            currentPin.isBoard = false
            currentPin.board = nil
            
            showUnPinned()
            
        } else {
            let boardChoiseVC = storyboard?.instantiateViewController(withIdentifier: "boardChoise") as! BoardChoiseViewController
            self.present(boardChoiseVC, animated: true, completion: nil)
        }
        
        
    }
    
    private func showPinned(){
        if currentPin.isBoard{
            addPinButton.setTitle("Pinned", for: .normal)
            
            addPinButton.backgroundColor = UIColor.lightGray
            addPinButton.setTitleColor(UIColor.systemBlue, for: .normal)
        }
    }
    
    private func showUnPinned(){
        addPinButton.setTitle("Pin", for: .normal)
        
        addPinButton.backgroundColor = UIColor.systemBlue
        addPinButton.setTitleColor(UIColor.white, for: .normal)
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
