//
//  CollectionViewController.swift
//  practiseApp
//
//  Created by systimanx on 22/05/21.
//

import UIKit

class CollectionViewController: UIViewController {
    
   let collectionViewCellId = "CollectionViewCellId"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let locationNames = ["Hawaii Resort", "Mountain Expedition", "Scuba Diving"]
        
        let locationImages = [UIImage(named: "hawaiiResort"), UIImage(named: "mountainExpedition"), UIImage(named: "scubaDiving")]
        
        let locationDescription = ["Beautiful resort off the coast of Hawaii", "Exhilarating mountainous expedition through Yosemite National Park", "Awesome Scuba Diving adventure in the Gulf of Mexico"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}

extension CollectionViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewCellId, for: indexPath) as! CollectionViewCell
        cell.locationImageView.image = locationImages[indexPath.row]
        cell.locationNameLabel.text = locationNames[indexPath.row]
        cell.locationDescriptionLabel.text = locationDescription[indexPath.row]
        return cell
        
    }
    
}


