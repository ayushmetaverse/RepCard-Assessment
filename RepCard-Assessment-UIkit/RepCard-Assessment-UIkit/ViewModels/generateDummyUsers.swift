import SwiftUI

func generateDummyUsers() -> [User] {

    return [
            User(userName: "Alice", userImg: "alice.png", tasks: [
                Task(name: "C1", progress: 56.0, activeStatus: true),
                Task(name: "C2", progress: 72.0, activeStatus: true),
                Task(name: "C3", progress: 100.0, activeStatus: true),
                Task(name: "C4", progress: 65.0, activeStatus: true),
                Task(name: "C5", progress: 80.0, activeStatus: true),
                Task(name: "C6", progress: 45.0, activeStatus: true),
                Task(name: "C7", progress: 90.0, activeStatus: true),
                Task(name: "C8", progress: 60.0, activeStatus: true),
                Task(name: "C9", progress: 40.0, activeStatus: false),
//                Task(name: "C10", progress: 25.0, activeStatus: false)
            ]),
            User(userName: "Bob", userImg: "bob.png", tasks: [
                Task(name: "C1", progress: 100.0, activeStatus: true),
                Task(name: "C2", progress: 80.0, activeStatus: true),
                Task(name: "C3", progress: 10.0, activeStatus: true),
                Task(name: "C4", progress: 60.0, activeStatus: true),
                Task(name: "C5", progress: 30.0, activeStatus: true),
                Task(name: "C6", progress: 90.0, activeStatus: true),
                Task(name: "C7", progress: 70.0, activeStatus: true),
                Task(name: "C8", progress: 40.0, activeStatus: true),
                Task(name: "C9", progress: 20.0, activeStatus: false),
//                Task(name: "C10", progress: 15.0, activeStatus: false)
            ]),
            User(userName: "Charlie", userImg: "charlie.png", tasks: [
                Task(name: "C1", progress: 90.0, activeStatus: true),
                Task(name: "C2", progress: 50.0, activeStatus: true),
                Task(name: "C3", progress: 25.0, activeStatus: true),
                Task(name: "C4", progress: 75.0, activeStatus: true),
                Task(name: "C5", progress: 55.0, activeStatus: true),
                Task(name: "C6", progress: 85.0, activeStatus: true),
                Task(name: "C7", progress: 95.0, activeStatus: true),
                Task(name: "C8", progress: 30.0, activeStatus: true),
                Task(name: "C9", progress: 15.0, activeStatus: false),
//                Task(name: "C10", progress: 10.0, activeStatus: false)
            ]),
            User(userName: "David", userImg: "david.png", tasks: [
                Task(name: "C1", progress: 100.0, activeStatus: true),
                Task(name: "C2", progress: 71.0, activeStatus: true),
                Task(name: "C3", progress: 58.0, activeStatus: true),
                Task(name: "C4", progress: 47.0, activeStatus: true),
                Task(name: "C5", progress: 88.0, activeStatus: true),
                Task(name: "C6", progress: 65.0, activeStatus: true),
                Task(name: "C7", progress: 72.0, activeStatus: true),
                Task(name: "C8", progress: 59.0, activeStatus: true),
                Task(name: "C9", progress: 42.0, activeStatus: false),
//                Task(name: "C10", progress: 35.0, activeStatus: false)
            ]),
            User(userName: "Eva", userImg: "eva.png", tasks: [
                Task(name: "C1", progress: 78.0, activeStatus: true),
                Task(name: "C2", progress: 83.0, activeStatus: true),
                Task(name: "C3", progress: 44.0, activeStatus: true),
                Task(name: "C4", progress: 39.0, activeStatus: true),
                Task(name: "C5", progress: 55.0, activeStatus: true),
                Task(name: "C6", progress: 74.0, activeStatus: true),
                Task(name: "C7", progress: 85.0, activeStatus: true),
                Task(name: "C8", progress: 46.0, activeStatus: true),
                Task(name: "C9", progress: 33.0, activeStatus: false),
//                Task(name: "C10", progress: 20.0, activeStatus: false)
            ]),
            User(userName: "Frank", userImg: "frank.png", tasks: [
                Task(name: "C1", progress: 54.0, activeStatus: true),
                Task(name: "C2", progress: 89.0, activeStatus: true),
                Task(name: "C3", progress: 68.0, activeStatus: true),
                Task(name: "C4", progress: 53.0, activeStatus: true),
                Task(name: "C5", progress: 71.0, activeStatus: true),
                Task(name: "C6", progress: 77.0, activeStatus: true),
                Task(name: "C7", progress: 82.0, activeStatus: true),
                Task(name: "C8", progress: 48.0, activeStatus: true),
                Task(name: "C9", progress: 28.0, activeStatus: false),
//                Task(name: "C10", progress: 22.0, activeStatus: false)
            ]),
            User(userName: "Grace", userImg: "grace.png", tasks: [
                Task(name: "C1", progress: 60.0, activeStatus: true),
                Task(name: "C2", progress: 73.0, activeStatus: true),
                Task(name: "C3", progress: 34.0, activeStatus: true),
                Task(name: "C4", progress: 81.0, activeStatus: true),
                Task(name: "C5", progress: 40.0, activeStatus: true),
                Task(name: "C6", progress: 92.0, activeStatus: true),
                Task(name: "C7", progress: 67.0, activeStatus: true),
                Task(name: "C8", progress: 56.0, activeStatus: true),
                Task(name: "C9", progress: 19.0, activeStatus: false),
//                Task(name: "C10", progress: 13.0, activeStatus: false)
            ]),
            User(userName: "Henry", userImg: "henry.png", tasks: [
                Task(name: "C1", progress: 88.0, activeStatus: true),
                Task(name: "C2", progress: 61.0, activeStatus: true),
                Task(name: "C3", progress: 43.0, activeStatus: true),
                Task(name: "C4", progress: 69.0, activeStatus: true),
                Task(name: "C5", progress: 100.0, activeStatus: true),
                Task(name: "C6", progress: 76.0, activeStatus: true),
                Task(name: "C7", progress: 64.0, activeStatus: true),
                Task(name: "C8", progress: 100.0, activeStatus: true),
                Task(name: "C9", progress: 30.0, activeStatus: false),
//                Task(name: "C10", progress: 18.0, activeStatus: false)
            ]),
            User(userName: "Ivy", userImg: "ivy.png", tasks: [
                Task(name: "C1", progress: 75.0, activeStatus: true),
                Task(name: "C2", progress: 68.0, activeStatus: true),
                Task(name: "C3", progress: 41.0, activeStatus: true),
                Task(name: "C4", progress: 57.0, activeStatus: true),
                Task(name: "C5", progress: 86.0, activeStatus: true),
                Task(name: "C6", progress: 71.0, activeStatus: true),
                Task(name: "C7", progress: 80.0, activeStatus: true),
                Task(name: "C8", progress: 49.0, activeStatus: true),
                Task(name: "C9", progress: 27.0, activeStatus: false),
//                Task(name: "C10", progress: 21.0, activeStatus: false)
            ]),
            User(userName: "Jack", userImg: "jack.png", tasks: [
                Task(name: "C1", progress: 92.0, activeStatus: true),
                Task(name: "C2", progress: 64.0, activeStatus: true),
                Task(name: "C3", progress: 33.0, activeStatus: true),
                Task(name: "C4", progress: 78.0, activeStatus: true),
                Task(name: "C5", progress: 59.0, activeStatus: true),
                Task(name: "C6", progress: 87.0, activeStatus: true),
                Task(name: "C7", progress: 69.0, activeStatus: true),
                Task(name: "C8", progress: 51.0, activeStatus: true),
                Task(name: "C9", progress: 24.0, activeStatus: false),
//                Task(name: "C10", progress: 16.0, activeStatus: false)
            ]),
            User(userName: "Kathy", userImg: "kathy.png", tasks: [
                Task(name: "C1", progress: 66.0, activeStatus: true),
                Task(name: "C2", progress: 57.0, activeStatus: true),
                Task(name: "C3", progress: 39.0, activeStatus: true),
                Task(name: "C4", progress: 74.0, activeStatus: true),
                Task(name: "C5", progress: 45.0, activeStatus: true),
                Task(name: "C6", progress: 92.0, activeStatus: true),
                Task(name: "C7", progress: 80.0, activeStatus: true),
                Task(name: "C8", progress: 53.0, activeStatus: true),
                Task(name: "C9", progress: 32.0, activeStatus: false),
//                Task(name: "C10", progress: 19.0, activeStatus: false)
            ])
    ]

}




