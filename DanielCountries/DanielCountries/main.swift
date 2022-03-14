import Foundation

func startsAndEndsWithAVowel() -> [String]{
    var result: [String] = []
    for country in Constants.countries {
        if let firstLetter = country.first,
           let lastLetter = country.last,
           Constants.vowels.contains(firstLetter.uppercased()) && Constants.vowels.contains(lastLetter.uppercased()) {
            result.append(country)
        }
    }
    return result
}

func moreThanHalfVowels() -> [String] {
    var result: [String] = []
    var vowelCount = 0
    
    for country in Constants.countries {
        for letter in country {
            if Constants.vowels.contains(letter.uppercased()) {
                vowelCount += 1
            }
        }
        if vowelCount * 2 >= country.count {
            result.append(country)
        }
        vowelCount = 0
    }
    return result
}

func containedContries() {
    var countryDict: [Set<String.Element>: Set<String>] = [:]
    for country in Constants.countries {
        countryDict[Set(country), default: []].insert(country)
    }
    
    for conutry in countryDict.values {
        print(conutry.count)
    }
}

print(startsAndEndsWithAVowel())
print(moreThanHalfVowels())
containedContries()

let countries = ["aabb", "aa", "aabbaa"]
let results: [String: [String]]

for (index, country) in countries.enumerated() {
    for secondCountry in countries
}
