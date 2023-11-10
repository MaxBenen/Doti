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
    //@State var dataArray: [String] = []
    @State var checkBox: Bool = true
    var toDoList:[(name:String,checked:Bool)] = []
    
    
    

    var body: some View {
        
                
                
            
                
                Button("Add"){
                    showAlert = true
                }
        

                .alert("Add to do", isPresented: $showAlert){
                    
                    TextField(TextfieldText, text: $TextfieldText)
                    
                    Button("Save",action: {saveToDo() })//Action apppend to list and show on screen vertical stacked
                    Button("Cancel",action: {TextfieldText = ""})//Close alert
                }
            
                
            
//            ForEach(dataArray, id: \.self){ data in
//                
//                    Toggle(data , isOn: $checkBox )
//                    
//    
//            }// loop for saving todos
        
      

      
            
    }//body
    
    func saveToDo(){
        toDoList.append(TextfieldText)
        TextfieldText = ""
    }
    
//    func saveToDo(){
//        dataArray.append(TextfieldText)
//        TextfieldText = ""
//        
//    }//end function save text
    
    
    
}//contentview

#Preview {
    ContentView()
}
