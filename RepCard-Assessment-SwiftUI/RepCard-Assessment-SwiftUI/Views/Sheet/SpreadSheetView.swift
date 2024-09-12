import SwiftUI

struct DynamicTableView: View {
    let users: [User]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topLeading) {
                // Horizontal scroll for tasks
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        // Task headers (horizontal scrollable)
                        HStack(spacing: 0) {
                            ForEach(users[0].tasks) { task in
                                Text(task.name)
                                    .frame(minWidth: 80, alignment: .center)
                                    .font(.headline)
                                    .padding(.vertical, 10)
                                    .background(Color.gray.opacity(0.2))
                            }
                        }
                        Divider()
                        
                        // Task data (vertical scrollable)
                        ScrollView(.vertical, showsIndicators: true) {
                            VStack(spacing: 0) {
                                ForEach(users) { user in
                                    HStack(spacing: 0) {
                                        ForEach(user.tasks) { task in
                                            if task.activeStatus {
                                                ProgressView(percentage: task.progress)
                                                    .frame(minWidth: 80)
                                                    .frame(height: 45)
                                                    .padding(.vertical, 5)
                                            } else {
                                                Image(systemName: "lock.fill")
                                                    .foregroundColor(.gray)
                                                    .frame(minWidth: 80)
                                                    .padding(.vertical, 5)
                                            }
                                        }
                                    }
                                    Divider()
                                }
                            }
                        }
                        .frame(height: geometry.size.height - 40) // Sync with name column
                    }
                    .offset(x: 110) // Offset to leave space for the fixed name column
                }
                
                // Fixed Name Column
                VStack(alignment: .leading, spacing: 0) {
                    // Fixed Name Header
                    Text("Name")
                        .frame(width: 110)
                        .font(.headline)
                        .padding(.vertical, 10)
                        .background(Color.gray.opacity(0.2))
                    
                    Divider()
                    
                    // Scrollable names (vertically sync with task data)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            ForEach(users) { user in
                                HStack(spacing: 10) {
                                    Image("alice") // Replace with dynamic image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 24, height: 24)
                                        .clipShape(Circle())
                                        .padding(.leading, 5)
                                    
                                    Text(user.userName)
                                        .frame(width: 100, alignment: .leading)
                                        .lineLimit(1)
                                        .padding(.vertical, 5)
                                }
                                .frame(height: 55)
                                Divider()
                            }
                        }
                    }
                    .frame(height: geometry.size.height - 40) // Match height to task data
                }
                .frame(width: 110)
                .background(Color.white) // Fixes the name column's background
            }
            .padding()
        }
    }
}

// Preview
struct SpreadSheetView: View {
    var body: some View {
        let users = generateDummyUsers()
        DynamicTableView(users: users)
    }
}

#Preview {
    SpreadSheetView()
}
