//
//  BindingTableViewController.swift
//  practiseApp
//
//  Created by systimanx on 01/06/21.
//

import UIKit

struct Photos: Codable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}

class BindingCell: UITableViewCell {
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var titleNameLabel: UILabel!
    
}

class BindingTableViewController: UITableViewController {
    
    let bindingCellId = "BindingCellId"
    
    var photos: [Photos]?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://jsonplaceholder.typicode.com/photos") {
            URLSession.shared.dataTask(with: URLRequest(url: url), completionHandler: { data, response, error in
                if let error = error {
                    print(error)
                } else if let data = data {
                    do{
                        let photos = try JSONDecoder().decode([Photos].self, from: data)
                        self.photos = photos
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                    } catch {
                        print(error)
                    }
                }
                
            }).resume()
        }

       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return photos?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: bindingCellId, for: indexPath) as! BindingCell
//        if let photo = photos?[indexPath.row],
//           let url = URL(string: photo.thumbnailUrl),
//               let data = try Data(contentsOf: url) {
//            cell.cardImageView.image = UIImage(data: data)
//            cell.titleNameLabel.text = photo.title
//        }
        if let photo = photos?[indexPath.row],
           let url = URL(string: photo.thumbnailUrl),
        let data = try? Data(contentsOf: url) {
            DispatchQueue.main.async {
                cell.cardImageView.image = UIImage(data: data)
                cell.titleNameLabel.text = photo.title
            }
            
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}

//
//"albumId": 1,
//    "id": 1,
//    "title": "accusamus beatae ad facilis cum similique qui sunt",
//    "url": "https://via.placeholder.com/600/92c952",
//    "thumbnailUrl": "https://via.placeholder.com/150/92c952"



//
//let url = URL(string: image.url)
//
//DispatchQueue.global().async {
//    let data = try? Data(contentsOf: url!)
//    DispatchQueue.main.async {
//        imageView.image = UIImage(data: data!)
//    }
//}
