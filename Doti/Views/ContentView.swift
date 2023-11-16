//
//  ContentView.swift
//  Doti
//
//  Created by Max Benenn on 24/10/2023.
//

import SwiftUI



struct ContentView: View {
    
    @State var TextfieldText: String = ""
    @State var showAlert: Bool = false
    
    @State var dataArray: [toDoModel] = [
        toDoModel(toDoTitle: "Hello", ToDoDone: false),
        toDoModel(toDoTitle: "Nice", ToDoDone: true)]
    
    
    
    
    
    
    var body: some View {
        
        NavigationView{
            
            
            List{
                ForEach(dataArray){ data in
                    ListRowView(data: data)
                }
                .onDelete(perform: deleteToDo)
            }// end list
            
            .navigationTitle("Todo list")
            
        }// end nav view
        
        
        .toolbar {
            Button("Add") {
                showAlert = true
            }
            .alert("Add to do", isPresented: $showAlert){
                
                TextField(TextfieldText, text: $TextfieldText)
                
                Button("Save",action: { })//Action apppend to  list and show on screen vertical stacked
                Button("Cancel",action: {TextfieldText = ""})//Close alert
            }// end alert
            
        } //end toolbar
        
    }//end body
    
    func deleteToDo (indexSet: IndexSet){
        dataArray.remove(atOffsets: indexSet)
    }
        
        
    }//end
    
    

    
    

    

#Preview {
    ContentView()
}


