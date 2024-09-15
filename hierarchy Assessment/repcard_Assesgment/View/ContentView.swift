import SwiftUI

struct ContentView: View {
    @ObservedObject var hierarchyData = HierarchyData()

    // States for tracking expansion of offices and teams
    @State private var expandedOffices: [Int: Bool] = [:]
    @State private var expandedTeams: [Int: Bool] = [:]

    var body: some View {
        List {
            
            ForEach(hierarchyData.offices) { office in
                Section(header: HStack {
                    Button(action: {
                        hierarchyData.toggleOfficeSelection(office)
                    }) {
                        Image(systemName: office.isSelected ? "checkmark.square" : "square")
                    }
                    Text(office.title).font(.headline)
                    Spacer()
                    Button(action: {
                        expandedOffices[office.id, default: false].toggle()
                    }) {
                        Image(systemName: expandedOffices[office.id] == true ? "chevron.down" : "chevron.right")
                    }
                }) {
                    if expandedOffices[office.id] == true {
                        ForEach(office.teams) { team in
                            DisclosureGroup(isExpanded: Binding(
                                get: { expandedTeams[team.id, default: false] },
                                set: { expandedTeams[team.id] = $0 }
                            )) {
//                                ForEach(team.users) { user in
//                                    HStack {
//                                        Button(action: {
//                                            hierarchyData.toggleUserSelection(office.id, teamId: team.id, user: user)
//                                        }) {
//                                            Image(systemName: user.isSelected ? "checkmark.square" : "square")
//                                        }
//                                        Text(user.title)
//                                    }
//                                }
                                
                                ForEach(team.users) { user in
                                    HStack {
                                        Button(action: {
                                            hierarchyData.toggleUserSelection(office.id, teamId: team.id, user: user)
                                        }) {
                                            Image(systemName: user.isSelected ? "checkmark.square" : "square")
                                        }
                                        // Add user image here
                                        if let imageURL = URL(string: user.image), !user.image.isEmpty {
                                            AsyncImage(url: imageURL) { image in
                                                image
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .clipShape(Circle())
                                            } placeholder: {
                                                // Fallback if the image is still loading
                                                Image(systemName: "person.circle")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .clipShape(Circle())
                                            }
                                        } else {
                                            // Fallback if the user has no image
                                            Image(systemName: "person.circle")
                                                .resizable()
                                                .frame(width: 30, height: 30)
                                                .clipShape(Circle())
                                        }
                                        Text(user.title)
                                    }
                                }

                            } label: {
                                HStack {
                                    Button(action: {
                                        hierarchyData.toggleTeamSelection(office.id, team: team)
                                    }) {
                                        Image(systemName: team.isSelected ? "checkmark.square" : "square")
                                    }
                                    Text(team.title)
                                }
                            }
                        }
                    }
                }
            }
        }
        .onAppear {
            // Set all offices to expanded initially
            for office in hierarchyData.offices {
                expandedOffices[office.id] = true
            }
        }
    }
}


struct HierarchyView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

