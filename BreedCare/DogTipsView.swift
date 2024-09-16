//
//  DogTipsView.swift
//  bitwisebattle
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation
import SwiftUI

// Data model for Dog Tip
struct DogTip: Identifiable {
    var id = UUID()
    var title: String
    var content: String
}

struct DogTipsView: View {
    let dogTips = [
        DogTip(title: "Regular Exercise", content: "Ensure your dog gets regular exercise to stay healthy and happy."),
        DogTip(title: "Balanced Diet", content: "Feed your dog a balanced diet suitable for their breed and age."),
        DogTip(title: "Routine Vet Visits", content: "Regular check-ups with a vet are crucial for early detection of health issues."),
        DogTip(title: "Training and Socialization", content: "Early training and socialization help prevent behavioral issues."),
        DogTip(title: "Grooming", content: "Brush your dog’s coat regularly to avoid matting and keep them looking clean.")
    ]
    
    var body: some View {
        NavigationView {
            List(dogTips) { tip in
                VStack(alignment: .leading) {
                    Text(tip.title)
                        .font(.headline)
                    Text(tip.content)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical)
            }
            .navigationTitle("Dog Tips")
        }
    }
}

