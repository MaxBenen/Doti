//
//  toDoModel.swift
//  Doti
//
//  Created by Max Benenn on 15/11/2023.
//

import Foundation

struct toDoModel: Identifiable{
    let id: String
    let toDoTitle: String
    let ToDoDone: Bool
    
    init(id: String = UUID().uuidString, toDoTitle: String, ToDoDone: Bool) {
        self.id = id
        self.toDoTitle = toDoTitle
        self.ToDoDone = ToDoDone
    }
    
    func updateCompletion() -> toDoModel{
        return toDoModel(id: id, toDoTitle: toDoTitle, ToDoDone: !ToDoDone)
    }
}
