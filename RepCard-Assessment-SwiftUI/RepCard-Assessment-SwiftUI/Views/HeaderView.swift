import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                // Back action
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
            }
            
            Text("Major League Doors")
                .padding(.leading,20)
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Button(action: {
                // Info action
            }) {
                Image(systemName: "info.circle")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    
            }
        }
        .padding()
    }
}


#Preview {
    HeaderView()
}
