//
//  CollectionViewController.swift
//  practiseApp
//
//  Created by systimanx on 22/05/21.
//

import UIKit


struct Place {
    let name: String
    let image: UIImage?
    let desc: String
}


class CollectionViewController: UIViewController {
    
   let collectionViewCellId = "CollectionViewCellId"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let places = [Place(name: "Hawaii Resort", image: UIImage(named: "hawaiiResort"), desc: "Beautiful resort off the coast of Hawaii"), Place(name: "Mountain Expedition", image: UIImage(named: "mountainExpedition"), desc: "Exhilarating mountainous expedition through Yosemite National Park"), Place(name: "Scuba Diving", image: UIImage(named: "scubaDiving"), desc: "Awesome Scuba Diving adventure in the Gulf of Mexico"), Place(name: "Hawaii Resort", image: UIImage(named: "hawaiiResort"), desc: "Beautiful resort off the coast of Hawaii"), Place(name: "Mountain Expedition", image: UIImage(named: "mountainExpedition"), desc: "Exhilarating mountainous expedition through Yosemite National Park"), Place(name: "Scuba Diving", image: UIImage(named: "scubaDiving"), desc: "Awesome Scuba Diving adventure in the Gulf of Mexico"), Place(name: "Hawaii Resort", image: UIImage(named: "hawaiiResort"), desc: "Beautiful resort off the coast of Hawaii"), Place(name: "Mountain Expedition", image: UIImage(named: "mountainExpedition"), desc: "Exhilarating mountainous expedition through Yosemite National Park"), Place(name: "Scuba Diving", image: UIImage(named: "scubaDiving"), desc: "Awesome Scuba Diving adventure in the Gulf of Mexico")]
//
//    let locationNames = ["Hawaii Resort", "Mountain Expedition", "Scuba Diving"]
//
//        let locationImages = [UIImage(named: "hawaiiResort"), UIImage(named: "mountainExpedition"), UIImage(named: "scubaDiving")]
//
//        let locationDescription = ["Beautiful resort off the coast of Hawaii", "Exhilarating mountainous expedition through Yosemite National Park", "Awesome Scuba Diving adventure in the Gulf of Mexico"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}

extension CollectionViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewCellId, for: indexPath) as! CollectionViewCell
        cell.locationImageView.image = places[indexPath.row].image
        cell.locationNameLabel.text = places[indexPath.row].name
        cell.locationDescriptionLabel.text = places[indexPath.row].desc
        return cell
        
    }
    
}


