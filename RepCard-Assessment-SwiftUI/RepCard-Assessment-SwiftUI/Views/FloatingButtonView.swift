import SwiftUI

struct FloatingButtonView: View {
    var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                // Rules action
            }) {
                HStack {
                    Image(systemName: "checklist")
                    Text("Rules")
                        .fontWeight(.bold)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black)
            }
            .foregroundColor(.white)
            
            Divider() // Line between buttons
                .frame(height: 24) // Custom height for the line
                .background(Color.white.opacity(0.5))
            
            Button(action: {
                // Share action
            }) {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("Share")
                        .fontWeight(.bold)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black)
            }
            .foregroundColor(.white)
        }
//        .padding(.horizontal, 16)
        .padding(.vertical, 2)
        .background(Color.black)
        .cornerRadius(8)
        .padding()
    
    }
}

#Preview {
    FloatingButtonView()
}
