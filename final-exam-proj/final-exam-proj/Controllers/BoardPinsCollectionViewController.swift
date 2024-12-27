//
//  BoardsPinsCollectionViewController.swift
//  final-exam-proj
//
//  Created by Балнур Бектасова on 24.12.2024.
//

import UIKit

private let reuseIdentifier = "BoardPinsCell"

class BoardPinsCollectionViewController: UICollectionViewController {
    
    
    var passedBoard: Int = 1
    var passedPins: [Pin] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passedPins = boardPins(board: passedBoard)
        print(passedPins)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return passedPins.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BoardPinsCollectionViewCell
        

        cell.layer.cornerRadius = 10
        
        cell.boardPinLabel.text = passedPins[indexPath.row].name
        cell.boardPinImage.kf.setImage(with: URL(string: passedPins[indexPath.row].imageURL))
        
        return cell
    }
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    func boardPins(board: Int) -> [Pin]{
        var boardPins: [Pin] = []
        for pin in pins{
            if pin.isBoard{
                if pin.board == board{
                    boardPins.append(pin)
                }
            }
        }
        return boardPins
    }

}
