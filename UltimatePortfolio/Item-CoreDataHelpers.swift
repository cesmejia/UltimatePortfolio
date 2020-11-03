//
//  Item-CoreDataHelpers.swift
//  UltimatePortfolio
//
//  Created by Ces Mejia on 01/11/20.
//

import Foundation

extension Item {
    var itemTitle: String {
        title ?? ""
    }
    
    var itemDetail: String {
        detail ?? ""
    }
    
    var itemCreationDate: Date {
        creationDate ?? Date()
    }
    
    static var example: Item {
        let controller = DataController(inMemory: true)
        let viewContext = controller.container.viewContext
        
        let item = Item(context: viewContext)
        item.title = ""
        item.detail = ""
        item.priority = 3
        item.creationDate = Date()
        
        return item
    }
}
