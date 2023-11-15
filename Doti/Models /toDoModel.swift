//
//  toDoModel.swift
//  Doti
//
//  Created by Max Benenn on 15/11/2023.
//

import Foundation

struct toDoModel: Identifiable{
    let id: String = UUID().uuidString
    let toDoTitle: String
    let ToDoDone: Bool
}
