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
    @State var dataArray: [String] = []

    var body: some View {
        

//            TextField("Type your todo", text: $TextfieldText)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding()
//            .background(Color.gray .opacity(0.2).cornerRadius(10))
//            .padding(30)
        
        Button("Add"){//Centerd in right corner
            showAlert = true
        }
        Spacer()
        
        
        .alert("Add to do", isPresented: $showAlert){
            TextField(TextfieldText, text: $TextfieldText)
            Button("Save",action: {})//Action apppend to list and show on screen vertical stacked
            Button("Cancel",action: {})//Close alert
        }
        
//        .alert(isPresented: $showAlert, content: {
//            Alert(
//                title: Text("Add your todo"),
//                primaryButton: .default(Text("Add")),
//                //call action like normal button
//                secondaryButton: .destructive(Text("Cancel")))
//           
//        })
        

        
    }//body
    
    func saveText(){
        dataArray.append(TextfieldText)
        
    }//end function save text 
    
    
}//contentview

#Preview {
    ContentView()
}
