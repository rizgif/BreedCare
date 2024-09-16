//
//  DogJournalView.swift
//  BreedCare
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation
import SwiftUI

struct DogJournalView: View {
    @StateObject private var viewModel = JournalViewModel()
    @State private var showAddEntry = false
    @State private var selectedEntry: JournalEntry? = nil
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.entries) { entry in
                    VStack(alignment: .leading) {
                        Text(entry.title)
                            .font(.headline)
                        Text(entry.content)
                            .font(.body)
                            .lineLimit(2)
                    }
                    .onTapGesture {
                        selectedEntry = entry
                        showAddEntry = true
                    }
                }
                .onDelete(perform: deleteEntry)
            }
            .navigationTitle("Breed Journal")
            .navigationBarItems(trailing: Button(action: {
                selectedEntry = nil
                showAddEntry = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showAddEntry) {
                AddEditEntryView(entry: $selectedEntry, viewModel: viewModel)
            }
        }
    }
    
    private func deleteEntry(at offsets: IndexSet) {
        for index in offsets {
            let entry = viewModel.entries[index]
            viewModel.deleteEntry(entry: entry)
        }
    }
}

