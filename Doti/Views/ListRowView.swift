//
//  ListRowView.swift
//  Doti
//
//  Created by Max Benenn on 15/11/2023.
//

import SwiftUI


struct ListRowView: View {
    
    let data: toDoModel
    
    var body: some View {
        HStack{
            Image(systemName: data.ToDoDone ? "checkmark.circle" : "circle")
                .foregroundColor(data.ToDoDone ? .blue : .gray)
            Text(data.toDoTitle)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 6)
    }
}

var data1 = toDoModel(toDoTitle: "First todo", ToDoDone: true)
var data2 = toDoModel(toDoTitle: "First todo2", ToDoDone: false)
#Preview {
    
    Group{
        ListRowView(data: data1)
        ListRowView(data: data2)
    }
}
