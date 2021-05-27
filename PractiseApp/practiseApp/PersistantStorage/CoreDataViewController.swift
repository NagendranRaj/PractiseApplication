//
//  CoreDataViewController.swift
//  practiseApp
//
//  Created by systimanx on 25/05/21.
//

import UIKit
import CoreData

class CoreDataViewController: UIViewController {
    
    let personCellId = "PersonCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var person: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        fetchPeople()

        }
    
    func fetchPeople() {
        do {
            self.person = try context.fetch(Person.fetchRequest())
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        catch {
            
        }
        
    }
    
    @IBAction func addActionBtn(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add Person", message: "what is their name?", preferredStyle: .alert)
        let submitButton = UIAlertAction(title: "Add", style: .default) { (action) in
            
            let textfield = alert.textFields![0] as UITextField
            
            let newPerson = Person(context: self.context)
            newPerson.name = textfield.text
            newPerson.age = 24
            newPerson.gender = "Male"
            
            do {
                try self.context.save()
            }
            catch {
                
            }
            self.fetchPeople()
        }
        
        alert.addAction(submitButton)
        
        self.present(alert, animated: true, completion: nil)
        
    }
}

extension CoreDataViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.person?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: personCellId, for: indexPath)
        
//        let person = self.items![indexPath.row]
//        cell.textLabel?.text = person.name
        cell.textLabel?.text = self.person[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = self.person[indexPath.row]
        
        let alert = UIAlertController(title: "Edit Person", message: "Edit name", preferredStyle: .alert)
        alert.addTextField()
        
        let textfield = alert.textFields![0] as UITextField
        textfield.text = person.name
        
        let savebutton = UIAlertAction(title: "Save", style: .default) { (action) in
            let textfield = alert.textFields![0] as UITextField
            
            person.name = textfield.text
            
            do {
                try self.context.save()
            }
            catch {
                
            }
            
            self.fetchPeople()
        }
        
        alert.addAction(savebutton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let action = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completionHandler) in
            
            let remove = self.person[indexPath.row]
            
            self.context.delete(remove)
            
            do{
                try self.context.save()
            }
            catch {
                
            }
            self.fetchPeople()
             
        }
        return UISwipeActionsConfiguration(actions: [action])
    
}
    
}
