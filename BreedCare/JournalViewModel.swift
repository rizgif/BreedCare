//
//  JournalViewModel.swift
//  BreedCare
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation
import Combine

class JournalViewModel: ObservableObject {
    @Published var entries: [JournalEntry] = []
    
    // Add a new entry
    func addEntry(breed: String, title: String, content: String) {
        let newEntry = JournalEntry(breed: breed, title: title, content: content)
        entries.append(newEntry)
    }
    
    // Edit an existing entry
    func updateEntry(entry: JournalEntry, title: String, content: String) {
        if let index = entries.firstIndex(where: { $0.id == entry.id }) {
            entries[index].title = title
            entries[index].content = content
        }
    }
    
    // Delete an entry
    func deleteEntry(entry: JournalEntry) {
        entries.removeAll { $0.id == entry.id }
    }
}

