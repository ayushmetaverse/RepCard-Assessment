import SwiftUI

struct User: Identifiable {
    let id: Int
    let title: String
    let image: String
    var isSelected: Bool = false
}

struct Team: Identifiable {
    let id: Int
    let title: String
    var users: [User]
    var isSelected: Bool = false
}

struct Office: Identifiable {
    let id: Int
    let title: String
    var teams: [Team]
    var isSelected: Bool = false
}
