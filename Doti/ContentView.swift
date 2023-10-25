//
//  ContentView.swift
//  Doti
//
//  Created by Max Benenn on 24/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        @State var TextfieldText: String = ""
        
        TextField("Type your todo", text: $TextfieldText)
            //.textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .background(Color.gray .opacity(0.2).cornerRadius(10))
            .padding(30)
        
    }
}

#Preview {
    ContentView()
}
