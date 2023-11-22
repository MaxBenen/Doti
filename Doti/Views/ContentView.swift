//
//  ContentView.swift
//  Doti
//
//  Created by Max Benenn on 24/10/2023.
//

import SwiftUI



struct ContentView: View {
    
    @Environment var listViewModel: ListViewModel
    
    @State var TextfieldText: String = ""
    @State var showAlert: Bool = false
    
    
    
    var body: some View {
        
        NavigationView{
            
            
            List{
                ForEach(listViewModel.dataArray){ data in
                    ListRowView(data: data)
                }
                .onDelete(perform: listViewModel.deleteToDo)
                .onMove(perform: listViewModel.moveItem)
            }// end list
            
            .navigationTitle("Todo list")
            
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button("Add"){
                    showAlert = true
                })
            
            .alert("Add to do", isPresented: $showAlert){
                
                TextField(TextfieldText, text: $TextfieldText)
                
                Button("Save",action: { })//Action apppend to  list and show on screen vertical stacked
                Button("Cancel",action: {TextfieldText = ""})//Close alert
            }// end alert
            
//            .toolbar {
//     
//            } //end toolbar
            
        }// end nav view
        
        
    
        
    }//end body

        
        
    }//end
    
    

    
    

    

#Preview {
    ContentView()
}


