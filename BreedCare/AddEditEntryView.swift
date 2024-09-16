//
//  AddEditEntryView.swift
//  BreedCare
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation
import SwiftUI

struct AddEditEntryView: View {
    @Binding var entry: JournalEntry?
    @ObservedObject var viewModel: JournalViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State private var breed: String = ""
    @State private var title: String = ""
    @State private var content: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Breed")) {
                    TextField("Breed", text: $breed)
                        .onAppear {
                            breed = entry?.breed ?? ""
                        }
                }
                
                Section(header: Text("Title")) {
                    TextField("Title", text: $title)
                        .onAppear {
                            title = entry?.title ?? ""
                        }
                }
                
                Section(header: Text("Content")) {
                    TextEditor(text: $content)
                        .onAppear {
                            content = entry?.content ?? ""
                        }
                }
            }
            .navigationTitle(entry == nil ? "Add Entry" : "Edit Entry")
            .navigationBarItems(trailing: Button("Save") {
                if let entry = entry {
                    viewModel.updateEntry(entry: entry, title: title, content: content)
                } else {
                    viewModel.addEntry(breed: breed, title: title, content: content)
                }
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}
