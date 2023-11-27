//
//  DotiApp.swift
//  Doti
//
//  Created by Max Benenn on 24/10/2023.
//

import SwiftUI

/**
MVVM Architecture
 
MODEL - data point
VIEW -UI
VIEWMODEL- manges models for views
 
 */

@main
struct DotiApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            
                
                
           ContentView()
                
    .environmentObject(listViewModel)
            
        }
    }
}
