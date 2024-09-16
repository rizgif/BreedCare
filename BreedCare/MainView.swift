//
//  MainView.swift
//  bitwisebattle
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation
import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Breed Info")
                }
            
            DogJournalView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Breed Journal")
                }
            
            DogNamesView() // New Tab for Dog Names
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Breed Names")
                }
        }
    }
}



@main
struct DogInfoApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
