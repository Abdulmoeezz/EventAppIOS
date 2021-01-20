//
//  CoreDataManager.swift
//  EventApp
//
//  Created by Abdul Moiz on 1/9/21.
//

import Foundation
import CoreData
import UIKit

final class CoreDataManager{
    
    lazy var persistentContainer : NSPersistentContainer = {
        let persistentContainer = NSPersistentContainer(name: "EventApp")
        persistentContainer.loadPersistentStores { (_, error) in
            print("qq ---\(error?.localizedDescription ?? "")")
        }
        return persistentContainer
        }()
    var moc: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    
    
    func saveEvent(name: String , date:Date  , image :UIImage){
        let event  = Event(context: moc)
        event.setValue(name, forKey: "name")
        let imagedata = image.jpegData(compressionQuality: 1)
        event.setValue(imagedata, forKey: "image")
        event.setValue(date, forKey: "date")
        do{
            try moc.save()
        } catch {
            print("qq-- Error Save\(error)")
            
        }}
    
    func fetchEvents() -> [Event] {
        do{
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let events = try moc.fetch(fetchRequest)
            return events
            
        } catch{
            print("qq--\(error)")
            return []
            
        }
        
    }
    
    
    
}
