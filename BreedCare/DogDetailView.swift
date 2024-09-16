import SwiftUI

struct DogDetailView: View {
    var breed: DogBreed
    
    // Retrieve care information for the current breed
    var careInfo: CareInfo? {
        careData[breed.name] // Assuming careData is accessible
    }

    // Retrieve common dog names for the current breed
    var commonNames: [String]? {
        dogNamesData[breed.name] // Assuming dogNamesData is accessible
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                // Breed Image Section
                if let urlString = breed.image?.url, let url = URL(string: urlString) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.4), radius: 10, x: 0, y: 5)
                    } placeholder: {
                        ProgressView()
                            .frame(width: 300, height: 300)
                    }
                    .padding(.top, 20)
                } else {
                    // Fallback image if no breed image is available
                    Image(systemName: "pawprint.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .foregroundColor(.gray)
                        .background(Color.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.top, 20)
                }

                // Breed Name Section
                Text(breed.name)
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundColor(.primary)
                    .padding(.top, 10)

                // Additional Information Section
                VStack(alignment: .leading, spacing: 15) {
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
                .padding(20)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(15)
                .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 3)
                .padding(.horizontal)

                // Care Information Section
                if let care = careInfo {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Care Information")
                            .font(.headline)
                            .padding(.bottom, 10)

                        InfoRow(title: "Exercise", value: care.exercise)
                        InfoRow(title: "Diet", value: care.diet)
                        InfoRow(title: "Grooming", value: care.grooming)
                        InfoRow(title: "Health", value: care.health)
                    }
                    .padding(20)
                    .background(Color.green.opacity(0.1))
                    .cornerRadius(15)
                    .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 3)
                    .padding(.horizontal)
                } else {
                    Text("No care information available for this breed.")
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                }

                // Dog Names Section
                if let names = commonNames, !names.isEmpty {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Dog Names by Dog Owners")
                            .font(.headline)
                            .padding(.bottom, 10)

                        ForEach(names, id: \.self) { name in
                            Text(name)
                                .font(.body)
                                .padding(5)
                                .background(Color.orange.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                    .padding(20)
                    .background(Color.yellow.opacity(0.1))
                    .cornerRadius(15)
                    .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 3)
                    .padding(.horizontal)
                } else {
                    Text("No common names available for this breed.")
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                }
            }
            .padding(.bottom, 40)
            .background(Color(UIColor.systemGroupedBackground)) // Consistent background
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
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            Spacer()
            Text(value)
                .font(.body)
                .foregroundColor(.primary)
                .multilineTextAlignment(.trailing)
        }
        .padding(.vertical, 5)
        .padding(.horizontal)
    }
}
