//
//  TodoList+CoreDataProperties.swift
//  practiseApp
//
//  Created by systimanx on 27/05/21.
//
//

import Foundation
import CoreData


extension TodoList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TodoList> {
        return NSFetchRequest<TodoList>(entityName: "TodoList")
    }

    @NSManaged public var name: String?
    @NSManaged public var createdAt: Date?

}

extension TodoList : Identifiable {

}
