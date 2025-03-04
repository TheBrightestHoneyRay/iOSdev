//
//  MyBoardsCollectionViewController.swift
//  final-exam-proj
//
//  Created by Балнур Бектасова on 23.12.2024.
//

import UIKit
import Kingfisher

private let reuseIdentifier = "BoardCell"

class MyBoardsCollectionViewController: UICollectionViewController {
    
    let testBoards = boards

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return testBoards.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BoardCollectionViewCell
        
        cell.layer.borderColor = UIColor.systemGray.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 10
        
        let curPins = boardPins(board: testBoards[indexPath.row])
        
        cell.boardLabel.text = testBoards[indexPath.row].name
        cell.pinImageView.kf.setImage(with: URL(string: curPins[0].imageURL))
        cell.pinImageView2.kf.setImage(with: URL(string: curPins[1].imageURL))
        
        cell.pinImageView3.kf.setImage(with: URL(string: curPins[2].imageURL))
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        let boardPinsViewController = self.storyboard?.instantiateViewController(withIdentifier: "boardPins") as! BoardPinsCollectionViewController
        
        boardPinsViewController.passedBoard = testBoards[indexPath.row].id
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

    
    func boardPins(board: Board) -> [Pin]{
        var boardPins: [Pin] = []
        for pin in pins{
            if pin.isBoard{
                if pin.board == board.id{
                    boardPins.append(pin)
                }
            }
        }
        return boardPins
    }
}
