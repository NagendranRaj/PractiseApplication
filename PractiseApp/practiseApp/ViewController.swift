//
//  ViewController.swift
//  practiseApp
//
//  Created by systimanx on 18/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tableViewBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
       self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func collectionViewBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CollectionViewController") as! CollectionViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func localNotificationBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "NotificationViewController") as! NotificationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func stackViewBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "StackViewController") as! StackViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func scrollViewBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ScrollViewController") as! ScrollViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func userdefaultBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "UserDefaultViewController") as! UserDefaultViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func coreDataBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CoreDataViewController") as! CoreDataViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

