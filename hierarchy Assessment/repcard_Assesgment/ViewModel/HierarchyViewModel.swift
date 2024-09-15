import SwiftUI

class HierarchyData: ObservableObject {
    @Published var offices: [Office] = [
        Office(id: 160, title: "Corporate Location", teams: [
            Team(id: 48, title: "T11", users: [
                User(id: 1035, title: "Ankit Pal", image: "https://s3-ap-southeast-2.amazonaws.com/repcard/users/0JQ2U17120671100271.jpg")
            ])
        ]),
        Office(id: 6, title: "Corporate Location", teams: [
            Team(id: 101, title: "Team 1", users: [
                User(id: 2, title: "Jitender Thakur", image: "https://s3-ap-southeast-2.amazonaws.com/repcard/users/dJEID16856188417637.jpg"),
                User(id: 2417, title: "NR Ashwin", image: ""),
                User(id: 2486, title: "ShashankTest Garg", image: ""),
                User(id: 2543, title: "Chat Test1", image: ""),
                User(id: 2544, title: "Test Reaction2", image: "https://s3-ap-southeast-2.amazonaws.com/repcard/users/c4k5q17212238585099.jpg"),
                User(id: 2547, title: "Ashish Gupta Test 1", image: ""),
                User(id: 2552, title: "pk Nagar", image: ""),
                User(id: 2607, title: "New User", image: ""),
                User(id: 2629, title: "import customers", image: ""),
                User(id: 2640, title: "Aman sinha", image: "")
            ]),
            Team(id: 390, title: "1", users: [
                User(id: 128, title: "SWAT M", image: "https://s3-ap-southeast-2.amazonaws.com/repcard/users/eh99h16119246003119.jpg")
            ]),
            Team(id: 700, title: "Sales Team", users: [
                User(id: 2643, title: "Bob Jones", image: ""),
                User(id: 2644, title: "Bob Jones", image: ""),
                User(id: 2645, title: "Bob Jones", image: ""),
                User(id: 2646, title: "Bob Jones", image: ""),
                User(id: 2647, title: "Bob Jones", image: ""),
                User(id: 2652, title: "Bob Jones", image: "")
            ])
        ])
    ]

    // Function to toggle office selection and all its teams/users
    func toggleOfficeSelection(_ office: Office) {
        if let index = offices.firstIndex(where: { $0.id == office.id }) {
            offices[index].isSelected.toggle()
            let isSelected = offices[index].isSelected
            for teamIndex in offices[index].teams.indices {
                offices[index].teams[teamIndex].isSelected = isSelected
                for userIndex in offices[index].teams[teamIndex].users.indices {
                    offices[index].teams[teamIndex].users[userIndex].isSelected = isSelected
                }
            }
        }
    }

    // Function to toggle team selection and all its users
    func toggleTeamSelection(_ officeId: Int, team: Team) {
        if let officeIndex = offices.firstIndex(where: { $0.id == officeId }),
           let teamIndex = offices[officeIndex].teams.firstIndex(where: { $0.id == team.id }) {
            offices[officeIndex].teams[teamIndex].isSelected.toggle()
            let isSelected = offices[officeIndex].teams[teamIndex].isSelected
            for userIndex in offices[officeIndex].teams[teamIndex].users.indices {
                offices[officeIndex].teams[teamIndex].users[userIndex].isSelected = isSelected
            }
            updateOfficeSelection(officeIndex)
        }
    }

    // Function to toggle individual user selection
    func toggleUserSelection(_ officeId: Int, teamId: Int, user: User) {
        if let officeIndex = offices.firstIndex(where: { $0.id == officeId }),
           let teamIndex = offices[officeIndex].teams.firstIndex(where: { $0.id == teamId }),
           let userIndex = offices[officeIndex].teams[teamIndex].users.firstIndex(where: { $0.id == user.id }) {
            offices[officeIndex].teams[teamIndex].users[userIndex].isSelected.toggle()
            updateTeamSelection(officeIndex, teamIndex)
        }
    }

    // Update team selection based on its users
    private func updateTeamSelection(_ officeIndex: Int, _ teamIndex: Int) {
        let allUsersSelected = offices[officeIndex].teams[teamIndex].users.allSatisfy { $0.isSelected }
        offices[officeIndex].teams[teamIndex].isSelected = allUsersSelected
        updateOfficeSelection(officeIndex)
    }

    // Update office selection based on its teams
    private func updateOfficeSelection(_ officeIndex: Int) {
        let allTeamsSelected = offices[officeIndex].teams.allSatisfy { $0.isSelected }
        offices[officeIndex].isSelected = allTeamsSelected
    }
}
