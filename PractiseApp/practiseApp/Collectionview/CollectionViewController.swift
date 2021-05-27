//
//  CollectionViewController.swift
//  practiseApp
//
//  Created by systimanx on 22/05/21.
//

import UIKit

class CollectionViewController: UIViewController {
    
   let CollectionViewCellId = "collectionCell"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var friendsArray = [ "pavi",
                  "aravind",
                  "nagu",
                  "ram",
                  "raju",
                  "kavin" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let item = sender as! Item
//        if segue.identifier == storyboardId {
//            if let vc = segue.destination as? CollectionListViewController {
//                vc.imageName = item.imageName
//            }
//        }
//    }
}

extension CollectionViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friendsArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellId, for: indexPath) as! CollectionViewCell
        cell.friendsImageView.image = UIImage(named: friendsArray[indexPath.row])
        cell.nameLabel.text = friendsArray[indexPath.row]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CollectionListViewController") as! CollectionListViewController
        vc.name = friendsArray[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
