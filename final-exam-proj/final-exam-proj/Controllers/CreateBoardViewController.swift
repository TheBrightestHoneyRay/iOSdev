
import UIKit

class CreateBoardViewController: UIViewController {
    
    @IBOutlet weak var closeButton: UIBarButtonItem!
    @IBOutlet weak var createButton: UIBarButtonItem!
    @IBOutlet weak var boardNameText: UITextField!
    @IBOutlet weak var hintLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hintLabel.text = ""
        boardNameText.placeholder = "Enter board name"
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func printResult(_ sender: UIButton){
        
        
        if boardNameText.text == ""{
            hintLabel.text = "The name is empty. Enter board name."
            return
        }
        
        else{
            for board in boards {
                if board.name == boardNameText.text{
                    boardNameText.placeholder = "Enter valid board name"
                    hintLabel.text = "This board name already exists"
                    return
                }
            }
            
            boards.append(Board(id: boards.count, name: boardNameText.text!))
            boardNameText.text = ""
            hintLabel.text = ""
            print(boards.count)
            print(boardNameText.text!)
            tabBarController?.selectedIndex = 0
            
        }
        
        
    }
    
    @IBAction private func closeView(_ sender: UIButton){
        tabBarController?.selectedIndex = 0
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
