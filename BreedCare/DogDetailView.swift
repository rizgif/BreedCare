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
                            .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 5)
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


                // Table Format Section using Grid with Improved Styling
                VStack(spacing: 10) {
                    Grid(alignment: .leading, horizontalSpacing: 20, verticalSpacing: 15) {
                        if let temperament = breed.temperament {
                            InfoRow(title: "Temperament", value: temperament)
                            Divider().background(Color.gray.opacity(0.6))
                        }

                        if let lifeSpan = breed.lifeSpan {
                            InfoRow(title: "Life Span", value: lifeSpan)
                            Divider().background(Color.gray.opacity(0.6))
                        }

                        if let weight = breed.weight {
                            InfoRow(title: "Weight", value: "\(weight.imperial) lbs / \(weight.metric) kg")
                            Divider().background(Color.gray.opacity(0.6))
                        }

                        if let height = breed.height {
                            InfoRow(title: "Height", value: "\(height.imperial) inches / \(height.metric) cm")
                        }
                    }
                    .padding()
                    .background(Color.white.opacity(0.9)) // Subtle white background
                    .cornerRadius(15)
                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 5)
                }
                .padding(.horizontal)
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [.white, .blue.opacity(0.1)]), startPoint: .top, endPoint: .bottom)
            ) // Subtle background gradient for the page
            .navigationTitle(breed.name)
        }
    }
}

struct InfoRow: View {
    var title: String
    var value: String

    var body: some View {
        HStack {
            Text("\(title):")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.secondary)
            Spacer()
            Text(value)
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.primary)
        }
        .padding(.horizontal)
    }
}
