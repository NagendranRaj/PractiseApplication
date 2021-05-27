////
////  CRUDViewController.swift
////  practiseApp
////
////  Created by systimanx on 26/05/21.
////
//
//import UIKit
//import Core
//
//class CRUDViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//
//    @IBAction func createDataBtn(_ sender: Any) {
//        createData()
//    }
//
//    @IBAction func retriveDataBtn(_ sender: Any) {
//        retrieveData()
//    }
//
//    @IBAction func updateDataBtn(_ sender: Any) {
//        updateData()
//    }
//
//     @IBAction func deleteDataBtn(_ sender: Any) {
//        deleteData()
//     }
//
//    func createData() {
//
//            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//
//            let managedContext = appDelegate.persistentContainer.viewContext
//
//            let userEntity = NSEntityDescription.entity(forEntityName: "User", in: managedContext)!
//
//            for i in 1...5 {
//
//                let user = NSManagedObject(entity: userEntity, insertInto: managedContext)
//                user.setValue("Ankur\(i)", forKeyPath: "username")
//                user.setValue("ankur\(i)@test.com", forKey: "email")
//                user.setValue("ankur\(i)", forKey: "password")
//            }
//
//
//
//            do {
//                try managedContext.save()
//
//            } catch let error as NSError {
//                print("Could not save. \(error), \(error.userInfo)")
//            }
//        }
//
//    func retrieveData() {
//
//           guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//
//           let managedContext = appDelegate.persistentContainer.viewContext
//
//           let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
//
//            do {
//                let result = try managedContext.fetch(fetchRequest)
//                for data in result as! [NSManagedObject] {
//                    print(data.value(forKey: "username") as! String)
//                }
//
//            } catch {
//
//                print("Failed")
//            }
//        }
//
//    func updateData() {
//
//            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//
//            let managedContext = appDelegate.persistentContainer.viewContext
//
//            let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "User")
//            fetchRequest.predicate = NSPredicate(format: "username = %@", "Ankur1")
//
//            do
//            {
//                let test = try managedContext.fetch(fetchRequest)
//
//                    let objectUpdate = test[0] as! NSManagedObject
//                    objectUpdate.setValue("newName", forKey: "username")
//                    objectUpdate.setValue("newmail", forKey: "email")
//                    objectUpdate.setValue("newpassword", forKey: "password")
//                    do{
//                        try managedContext.save()
//                    }
//                    catch
//                    {
//                        print(error)
//                    }
//                }
//            catch
//            {
//                print(error)
//            }
//
//        }
//
//         func deleteData() {
//
//            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//
//            let managedContext = appDelegate.persistentContainer.viewContext
//
//            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
//            fetchRequest.predicate = NSPredicate(format: "username = %@", "Ankur3")
//
//            do
//            {
//                let test = try managedContext.fetch(fetchRequest)
//
//                let objectToDelete = test[0] as! NSManagedObject
//                managedContext.delete(objectToDelete)
//
//                do{
//                    try managedContext.save()
//                }
//                catch
//                {
//                    print(error)
//                }
//
//            }
//            catch
//            {
//                print(error)
//            }
//        }
//  }
