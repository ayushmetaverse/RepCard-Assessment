import SwiftUI

struct ProgressView: View {
    var percentage: Double
    
    var body: some View {
        ZStack {
            if percentage < 100 {
                Circle()
                    .trim(from: 0, to: CGFloat(percentage / 100))
                    .stroke(Color.red, lineWidth: 1)
                    .frame(width: 26, height: 26)
                    .rotationEffect(.degrees(-90))
                    .animation(.linear, value: percentage)
                
                Text("\(Int(percentage))%")
                    .font(.system(size: 11))
                    
                    .foregroundColor(.red)
            } else {
                Circle()
                    .fill(Color.green.opacity(0.1))
                    .frame(width: 26, height: 26)
                
                Image(systemName: "checkmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 11, height: 9)
                    .foregroundColor(.green)
            }
        }
    }
}

struct RedProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(percentage: 88)
            .previewLayout(.sizeThatFits)
                        
    }
}
