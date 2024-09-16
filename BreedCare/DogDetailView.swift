import SwiftUI

struct DogDetailView: View {
    var breed: DogBreed

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Breed Image Section
                if let urlString = breed.image?.url, let url = URL(string: urlString) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 5)
                    } placeholder: {
                        ProgressView()
                            .frame(width: 300, height: 300)
                    }
                    .padding(.top)
                } else {
                    // Fallback image if no breed image is available
                    Image(systemName: "pawprint.circle.fill")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.top)
                }

                // Breed Name Section
                Text(breed.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                    .foregroundColor(.primary)

                // Additional Information Section
                VStack(alignment: .leading, spacing: 10) {
                    if let temperament = breed.temperament {
                        InfoRow(title: "Temperament", value: temperament)
                    }
                    
                    if let lifeSpan = breed.lifeSpan {
                        InfoRow(title: "Life Span", value: lifeSpan)
                    }

                    if let weight = breed.weight {
                        InfoRow(title: "Weight", value: "\(weight.imperial) lbs / \(weight.metric) kg")
                    }

                    if let height = breed.height {
                        InfoRow(title: "Height", value: "\(height.imperial) inches / \(height.metric) cm")
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(15)
                .padding(.horizontal)
            }
            .padding()
            .navigationTitle(breed.name)
            .background(Color(UIColor.systemBackground))  // To ensure background consistency
        }
    }
}

struct InfoRow: View {
    var title: String
    var value: String

    var body: some View {
        HStack {
            Text("\(title):")
                .font(.headline)
                .fontWeight(.semibold)
            Spacer()
            Text(value)
                .font(.body)
        }
        .padding(.horizontal)
    }
}
