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

    var body: some View {
        

//        TextField("Type your todo", text: $TextfieldText)
//            //.textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding()
//            .background(Color.gray .opacity(0.2).cornerRadius(10))
//            .padding(30)
        
        Button("Add"){
            showAlert.toggle()
        }
        
        .alert(isPresented: $showAlert, content: {
            Alert(
                title: Text("Add your todo"),
                primaryButton: .default(Text("Add")),
                //call action like normal button
                secondaryButton: .destructive(Text("Cancel")))
            //Alert(title: Text("Add your todo"))
        })
        

        
    }//body
    
    func printing (){
    
    }//func printing
    
}//contentview

#Preview {
    ContentView()
}
