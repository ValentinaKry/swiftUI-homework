
import Foundation
import SwiftUI

struct Card: Codable, Identifiable {
    let id = UUID()
    let name: String
    let username: String
}
