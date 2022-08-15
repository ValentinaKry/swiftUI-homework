import Foundation
import SwiftUI

struct Card: Codable, Identifiable {
    let id = UUID()
    let name: String
    let username: String
}

class Api {
    func getPost (completion: @escaping ([Card]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }

        URLSession.shared.dataTask(with: url) { data, _, _ in
            let posts = try! JSONDecoder().decode([Card].self, from: data!)

            DispatchQueue.main.async {
                completion(posts)
            }
        }
        .resume()
    }
}
