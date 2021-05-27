//
//  Person+CoreDataProperties.swift
//  practiseApp
//
//  Created by systimanx on 26/05/21.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var age: Int16
    @NSManaged public var gender: String?
    @NSManaged public var name: String?

}

extension Person : Identifiable {

}
