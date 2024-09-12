import SwiftUI

struct DynamicTableView: View {
    let users: [User]

    var body: some View {
        GeometryReader{ geometry in
            ScrollView(.vertical, showsIndicators: false) {
                HStack() {
                    // Fixed Name and Image Column
                    VStack(alignment: .leading, spacing: 0) {
                        // Name Header
                        Text("Name")
                            .frame(width: 110)
                            .font(.headline)
                            .padding(.vertical, 10)
                            .background(Color.gray.opacity(0.2))
                        
                        Divider()

                        // Names and Images
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
                        
     
                    
                    }
                    .frame(width: 102, alignment: .leading)
                    Divider()

                    
                    .background(Color.white)

                    // Scrollable Task Columns
                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack(spacing: 0) {
                            // Task Headers
                            HStack(spacing: 0) {
                                ForEach(users[0].tasks) { task in
                                    Text(task.name)
                                        .frame(minWidth: 80, alignment: .center)
                                        .font(.headline)
                                        .padding(.vertical, 10)
                                        .background(Color.gray.opacity(0.2))
                                }
                            }
                            
                            


                            // Task Data
                            ScrollView(.vertical, showsIndicators: false) {
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
                        }
                        
                        
                    }
                }
               
                
                
            }
            
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



