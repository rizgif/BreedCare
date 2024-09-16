//
//  DogDetailView.swift
//  bitwisebattle
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation
import SwiftUI

struct DogDetailView: View {
    var breed: DogBreed

    var body: some View {
        VStack {
            if let urlString = breed.image?.url, let url = URL(string: urlString) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } placeholder: {
                    ProgressView()
                }
                .padding()
            }

        

            Text(breed.temperament ?? "Unknown Temperament")
                .font(.body)
                .padding()

            if let lifeSpan = breed.lifeSpan {
                Text("Life Span: \(lifeSpan)")
                    .font(.body)
                    .padding()
            }

            if let weight = breed.weight {
                Text("Weight: \(weight.imperial) lbs / \(weight.metric) kg")
                    .font(.body)
                    .padding()
            }

            if let height = breed.height {
                Text("Height: \(height.imperial) inches / \(height.metric) cm")
                    .font(.body)
                    .padding()
            }

            Spacer()
        }
        .navigationTitle(breed.name)
    }
}
