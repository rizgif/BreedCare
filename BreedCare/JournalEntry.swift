//
//  JournalEntry.swift
//  BreedCare
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation

struct JournalEntry: Identifiable, Codable {
    var id: UUID = UUID()
    var breed: String
    var title: String
    var content: String
}

