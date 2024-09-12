import SwiftUI

struct GradientView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.orange , .purple]),
                           startPoint: .leading, endPoint: .trailing)
            
            .frame(height: 50)
            
            HStack {
                Text("🎯")
                Text("Hannah completed cycle (C3) - 5 mins ago")
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                Spacer()
                HStack{
                    Image(systemName: "timer")
                        .font(.system(size: 11))
                    Text("3d")
                        .font(.system(size: 14))
                }
                .foregroundColor(.white)
                .padding(4)// Add padding around the content
                .background(Color.black.opacity(0.2))
                
                .cornerRadius(10)
                // Add the curved corner
               
            }
            .padding(.horizontal)
        }
        
    }
}


#Preview {
    GradientView()
}
