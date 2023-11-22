//
//  ListVieModel.swift
//  Doti
//
//  Created by Max Benenn on 22/11/2023.
//

import Foundation

class ListViewModel: ObservableObject{
    
    @Published var dataArray: [toDoModel] = []
    
    init() {
        getItems()
    }
    
    func getItems(){
        let newItems = [
            toDoModel(toDoTitle: "Hello", ToDoDone: false),
            toDoModel(toDoTitle: "Nice", ToDoDone: true)]
        
        dataArray.append(contentsOf: newItems)
    }
    
    func deleteToDo (indexSet: IndexSet){
        dataArray.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        dataArray.move(fromOffsets: from, toOffset: to)
    }
}
