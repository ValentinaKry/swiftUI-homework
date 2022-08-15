
import Foundation
import SwiftUI

struct Card: Hashable, Codable {
    let name: String
    let username: String
}

class ViewModel: ObservableObject {
    @Published var cards: [Card] = []
    func fetch() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }

            do {
                let cards = try JSONDecoder().decode([Card].self, from: data)
                DispatchQueue.main.async {
                    self?.cards = cards
                }

            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}
