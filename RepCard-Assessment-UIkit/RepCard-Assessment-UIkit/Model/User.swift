import Foundation

struct Task {
    let id: UUID
    let name: String
    var progress: Double
    var activeStatus: Bool
    
    init(name: String, progress: Double, activeStatus: Bool) {
        self.id = UUID()
        self.name = name
        self.progress = progress
        self.activeStatus = activeStatus
    }
}

struct User {
    let id: UUID
    let userName: String
    let userImg: String
    var tasks: [Task]
    
    init(userName: String, userImg: String, tasks: [Task]) {
        self.id = UUID()
        self.userName = userName
        self.userImg = userImg
        self.tasks = tasks
    }
}
