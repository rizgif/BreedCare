import SwiftUI
import Combine

// Data model for Dog Breed
struct DogBreed: Identifiable, Decodable {
    var id: Int
    var name: String
    var temperament: String?
    var image: ImageInfo?
    var weight: Measurement?
    var height: Measurement?
    var origin: String?
    var breedGroup: String?
    var lifeSpan: String?

    enum CodingKeys: String, CodingKey {
        case id, name, temperament, image, origin
        case weight, height
        case breedGroup = "breed_group"
        case lifeSpan = "life_span"
    }
}

struct Measurement: Decodable {
    var imperial: String
    var metric: String
}

struct ImageInfo: Decodable {
    var url: String
}

// ViewModel to fetch data from the Dog API
class DogBreedViewModel: ObservableObject {
    @Published var dogBreeds: [DogBreed] = []
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        fetchDogBreeds()
    }
    
    func fetchDogBreeds() {
        guard let url = URL(string: "https://api.thedogapi.com/v1/breeds") else { return }
        
        var request = URLRequest(url: url)
        request.addValue("YOUR_API_KEY", forHTTPHeaderField: "live_UhDHiCXZJC2dLTdYdtZBE5Td4FeTGV2SwhKEOUQQy7BVMNsgdFIgw1OwDGUkFsIE") // Replace with your actual API key
        
        URLSession.shared.dataTaskPublisher(for: request)
            .map { result -> Data in
                if let jsonString = String(data: result.data, encoding: .utf8) {
                    print("Raw JSON Response: \(jsonString)")  // Print the raw JSON response
                }
                return result.data
            }
            .decode(type: [DogBreed].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Finished fetching breeds")
                case .failure(let error):
                    print("Failed to fetch breeds: \(error.localizedDescription)")
                }
            }, receiveValue: { breeds in
                self.dogBreeds = breeds
                print("Breeds loaded: \(breeds.count)")
            })
            .store(in: &cancellables)
        }
}

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = DogBreedViewModel()
    @State private var searchText: String = ""

    var filteredBreeds: [DogBreed] {
        if searchText.isEmpty {
            return viewModel.dogBreeds
        } else {
            return viewModel.dogBreeds.filter { breed in
                breed.name.localizedCaseInsensitiveContains(searchText) ||
                (breed.temperament?.localizedCaseInsensitiveContains(searchText) ?? false)
            }
        }
    }

    var body: some View {
        NavigationView {
            List(filteredBreeds) { breed in
                NavigationLink(destination: DogDetailView(breed: breed)) {
                    HStack {
                        if let urlString = breed.image?.url, let url = URL(string: urlString) {
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                            } placeholder: {
                                ProgressView()
                            }
                        } else {
                            Image(systemName: "pawprint.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding()
                        }

                        VStack(alignment: .leading, spacing: 5) {
                            Text(breed.name)
                                .font(.headline)
                                .lineLimit(1)  // Limit to one line for the breed name
                            
                            Text(breed.temperament ?? "No temperament info")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .lineLimit(2)  // Limit to two lines for temperament to avoid overflow
                                .fixedSize(horizontal: false, vertical: true)  // Allow text to wrap
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)  // Ensure text takes up available space
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 3)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Dog Breeds")
            .searchable(text: $searchText, prompt: "Search for breeds")
            .listStyle(PlainListStyle())  // Optional: If you prefer a flat style for lists
        }
    }
}
