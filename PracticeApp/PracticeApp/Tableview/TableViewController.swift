//
//  TableViewController.swift
//  practiseApp
//
//  Created by systimanx on 22/05/21.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var friendTableView: UITableView! //Tableview
    
    let friendCellId = "FriendsCellId" // ReusableId
    
    var friends = ["pavi","aravind","nagu","ram","raju","kavin"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
}

extension TableViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: friendCellId) as! TableViewCell
        cell.friendsImageView.image = UIImage(named: friends[indexPath.row])
        cell.nameLabel.text = friends[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { //Set a row height
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //Selected one is taped
        let vc = self.storyboard?.instantiateViewController(identifier: "TableDetailViewController") as! TableDetailViewController
        vc.image = UIImage(named: friends[indexPath.row])!
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
