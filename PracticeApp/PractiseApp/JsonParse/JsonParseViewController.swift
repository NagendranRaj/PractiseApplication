//
//  JsonParseViewController.swift
//  practiseApp
//
//  Created by systimanx on 31/05/21.
//

import UIKit

class JsonParseViewController: UITableViewController {

    var petitions = [Petition]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
            }
        }
   }
    func parse(json: Data) {
        let decoder = JSONDecoder()
        if let jsonPetitions = try? decoder .decode(Petitions.self, from: json) {
            petitions = jsonPetitions.results
            tableView.reloadData()
        }
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = petitions[indexPath.row].title
        cell.detailTextLabel?.text = petitions[indexPath.row].body
        return cell
    }

}
