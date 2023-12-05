//
//  ContentView.swift
//  Doti
//
//  Created by Max Benenn on 24/10/2023.
//

import SwiftUI

struct ContentView: View {
    
   @EnvironmentObject var listViewModel: ListViewModel
    
    @State var TextfieldText: String = ""
    @State var showAlert: Bool = false

    var body: some View {
        
        NavigationView{
            ZStack{
                if listViewModel.dataArray.isEmpty{
                    Text("No items")
                } else {
                    List{
                        ForEach(listViewModel.dataArray){ data in
                            ListRowView(data: data)
                                .onTapGesture {
                                    withAnimation(.linear){
                                        listViewModel.updateItem(item: data)
                                    }
                                }

                        }
                        .onDelete(perform: listViewModel.deleteToDo)
                        .onMove(perform: listViewModel.moveItem)
                    }// end list
                }
            }
            

            
            .navigationTitle("Todo list")
            
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button("Add"){
                    showAlert = true
                })
            
            .alert("Add to do", isPresented: $showAlert){
                
                TextField(TextfieldText, text: $TextfieldText)
                
                Button("Save",action:{ saveButtonPressed() })
                
                Button("Cancel",action: {TextfieldText = ""})//Close alert
            }// end alert

        }// end nav view
       
    }//end body
    
    func saveButtonPressed() {
        listViewModel.addItem(title: TextfieldText)
    }
        
    }//end

#Preview {

    ContentView()
        .environmentObject(ListViewModel())
        
}


