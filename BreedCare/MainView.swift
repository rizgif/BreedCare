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
                    Text("Breeds")
                }
            
            DogTipsView()
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("Tips")
                }
            
            DogNamesView() // New Tab for Dog Names
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Dog Names")
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
