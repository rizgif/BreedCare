//
//  CareData.swift
//  BreedCare
//
//  Created by Riz Nur Saidy on 2024-09-16.
//

import Foundation

// Define the CareInfo struct to represent care information for each breed
struct CareInfo: Codable {
    var exercise: String
    var diet: String
    var grooming: String
    var health: String
}

// Create the dictionary with care information for all breeds
let careData: [String: CareInfo] = [
    "Affenpinscher": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Afghan Hound": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "African Hunting Dog": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Airedale Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Akbash Dog": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Akita": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "Quality food; manage weight.",
        grooming: "Regular brushing; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Alapaha Blue Blood Bulldog": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Alaskan Husky": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular brushing; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Alaskan Malamute": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular brushing; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "American Bulldog": CareInfo(
        exercise: "Moderate to high; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "American Bully": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "American Eskimo Dog": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; monitor weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "American Eskimo Dog (Miniature)": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; monitor weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "American Foxhound": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "Quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "American Pit Bull Terrier": CareInfo(
        exercise: "Moderate to high; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "American Staffordshire Terrier": CareInfo(
        exercise: "Moderate to high; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "American Water Spaniel": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Anatolian Shepherd Dog": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Appenzeller Sennenhund": CareInfo(
        exercise: "Moderate to high; needs regular physical activity.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Australian Cattle Dog": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Australian Kelpie": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Australian Shepherd": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Australian Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Azawakh": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Barbet": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Basenji": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Basset Bleu de Gascogne": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Basset Hound": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Beagle": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Bearded Collie": CareInfo(
        exercise: "Moderate to high; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Beauceron": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bedlington Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; monitor weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Belgian Malinois": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Belgian Tervuren": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bernese Mountain Dog": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bichon Frise": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Black and Tan Coonhound": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "Quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bloodhound": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bluetick Coonhound": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "Quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Boerboel": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Border Collie": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Border Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Boston Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Bouvier des Flandres": CareInfo(
        exercise: "Moderate to high; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Boxer": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Boykin Spaniel": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bracco Italiano": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Briard": CareInfo(
        exercise: "Moderate to high; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Brittany": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bull Terrier": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "Quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bull Terrier (Miniature)": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "Quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Bullmastiff": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Cairn Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Cane Corso": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Cardigan Welsh Corgi": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Catahoula Leopard Dog": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Caucasian Shepherd (Ovcharka)": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Cavalier King Charles Spaniel": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Chesapeake Bay Retriever": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Chinese Crested": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Chinese Shar-Pei": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for skin issues.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Chinook": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular brushing; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Chow Chow": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Clumber Spaniel": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Cocker Spaniel": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for ear infections and certain genetic conditions."
    ),
    "Collie": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Coonhound": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "Quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Dachshund": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for back issues and certain genetic conditions."
    ),
    "Dalmatian": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Dandie Dinmont Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Doberman Pinscher": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Dogue de Bordeaux": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Dutch Shepherd": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "English Bulldog": CareInfo(
        exercise: "Low; short walks and moderate play.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for skin folds.",
        health: "Watch for breathing issues and certain genetic conditions."
    ),
    "English Setter": CareInfo(
        exercise: "Moderate to high; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "English Springer Spaniel": CareInfo(
        exercise: "Moderate to high; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Entlebucher Mountain Dog": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Field Spaniel": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Finnish Spitz": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Flat-Coated Retriever": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "French Bulldog": CareInfo(
        exercise: "Low; short walks and moderate play.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for breathing issues and certain genetic conditions."
    ),
    "German Pinscher": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "German Shepherd": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "German Shorthaired Pointer": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Giant Schnauzer": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Glen of Imaal Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "Quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Golden Retriever": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Gordon Setter": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Great Dane": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Great Pyrenees": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Greater Swiss Mountain Dog": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Hound": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "Quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Irish Setter": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Irish Water Spaniel": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Italian Greyhound": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Jack Russell Terrier": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Japanese Chin": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Keeshond": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Kerry Blue Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Koolie": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Labrador Retriever": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Lagotto Romagnolo": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Lakeland Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Lhasa Apso": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Maltese": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Manchester Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Mastiff": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Miniature Schnauzer": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Newfoundland": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Norfolk Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Norwegian Elkhound": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Nova Scotia Duck Tolling Retriever": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Papillon": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Pekingese": CareInfo(
        exercise: "Low; short walks and moderate play.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for breathing issues and certain genetic conditions."
    ),
    "Pembroke Welsh Corgi": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Pointer": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Pomeranian": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    ),
    "Poodle": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Portuguese Water Dog": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Pug": CareInfo(
        exercise: "Low; short walks and moderate play.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for breathing issues and certain genetic conditions."
    ),
    "Rat Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Redbone Coonhound": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Rottweiler": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Saint Bernard": CareInfo(
        exercise: "Moderate; regular physical activity needed.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Saluki": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Samoyed": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Schipperke": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Scottish Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Shetland Sheepdog": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Shiba Inu": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Shih Tzu": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for breathing issues and certain genetic conditions."
    ),
    "Siberian Husky": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for shedding.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Staffordshire Bull Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Standard Schnauzer": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Sussex Spaniel": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Tibetan Spaniel": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Tibetan Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Vizsla": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Weimaraner": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Welsh Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "West Highland White Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Whippet": CareInfo(
        exercise: "High; needs regular physical activity.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for hip dysplasia and certain genetic conditions."
    ),
    "Wire Fox Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Xoloitzcuintli": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Minimal; regular brushing.",
        health: "Watch for skin issues and certain genetic conditions."
    ),
    "Yorkshire Terrier": CareInfo(
        exercise: "Moderate; regular play and exercise.",
        diet: "High-quality food; manage weight.",
        grooming: "Regular grooming; watch for matting.",
        health: "Watch for dental issues and certain genetic conditions."
    )
]
