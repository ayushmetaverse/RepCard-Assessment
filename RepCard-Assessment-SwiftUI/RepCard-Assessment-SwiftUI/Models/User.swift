import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let name: String // e.g., "C1", "C2", "C3", etc.
    var progress: Double // Percentage progress e.g., "56%", "72%"
    var activeStatus: Bool // true = active (unlocked), false = locked
}

struct User: Identifiable {
    let id = UUID()
    let userName: String
    let userImg: String
    var tasks: [Task] // Array of tasks for the user
}

