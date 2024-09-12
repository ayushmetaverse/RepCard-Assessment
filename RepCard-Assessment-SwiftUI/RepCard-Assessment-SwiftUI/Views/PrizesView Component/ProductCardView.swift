import SwiftUI

struct ProductCardView: View {
    var image: String
    var title: String
    
    var body: some View {
        VStack(spacing: 0) {
            // Image section
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 90)
                .padding(.top, 8)
            
            Spacer()
            
            Text(title)
                .font(.system(size: 14))
                .foregroundColor(.primary)
                .lineLimit(1)
                .minimumScaleFactor(0.8)
                .padding(.horizontal, 4)
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.1)) // Gray background with opacity
                .cornerRadius(5)
        }
        .frame(width: 135, height: 150) // Adjust to your required card size
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

#Preview {
    ProductCardView(image: "watch", title: "C2: Apple SE Watch")
}
