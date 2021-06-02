//
//  TableListViewController.swift
//  practiseApp
//
//  Created by systimanx on 24/05/21.
//

import UIKit

class TableDetailViewController: UIViewController {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        
    }
//    func configureView() {
//        guard let name = friends else { return}
//        if let image = UIImage(named: name) {
//            imageView.image = image
//        }
//
//    }
}
