//
//  CollectionListViewController.swift
//  practiseApp
//
//  Created by systimanx on 22/05/21.
//

import UIKit

class CollectionListViewController: UIViewController {

    @IBOutlet weak var friendsImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        friendsImageView.image = UIImage(named: name)
        
    }
    
}
 
