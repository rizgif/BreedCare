//
//  DogNamesView.swift
//  BreedCare
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation
import SwiftUI

struct DogNamesView: View {
    @State private var selectedBreed: String = ""
    @State private var newName: String = ""
    @State private var dogNamesDict: [String: [String]] = dogNamesData // Use your existing dogNamesData
    
    var body: some View {
        NavigationView {
            VStack {
                // Breed Selection Picker
                Picker("Select a Breed", selection: $selectedBreed) {
                    ForEach(dogNamesDict.keys.sorted(), id: \.self) { breed in
                        Text(breed)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()
                
                // Show common names if a breed is selected
                if let commonNames = dogNamesDict[selectedBreed] {
                    List {
                        Section(header: Text("Common Names for \(selectedBreed)")) {
                            ForEach(commonNames, id: \.self) { name in
                                Text(name)
                            }
                        }
                    }
                    .listStyle(InsetGroupedListStyle())
                }
                
                // Add New Dog Name Section
                HStack {
                    TextField("Enter New Name", text: $newName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button(action: {
                        addDogName()
                    }) {
                        Text("Add Name")
                            .font(.headline)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .disabled(newName.isEmpty || selectedBreed.isEmpty)
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Dog Names")
        }
    }
    
    // Function to add a new dog name for the selected breed
    private func addDogName() {
        if !newName.isEmpty && !selectedBreed.isEmpty {
            if dogNamesDict[selectedBreed] != nil {
                dogNamesDict[selectedBreed]?.append(newName)
            } else {
                dogNamesDict[selectedBreed] = [newName]
            }
            newName = "" // Clear input field after adding
        }
    }
}

