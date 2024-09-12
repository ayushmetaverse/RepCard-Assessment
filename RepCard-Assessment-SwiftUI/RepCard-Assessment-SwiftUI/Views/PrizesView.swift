import SwiftUI

struct PrizesView: View {
    let prizes: [Prize] = []
    
    var body: some View {
        VStack{
            Text("Prizes")
                .padding(.top ,20)
                .padding(.trailing ,300)
                .bold()
                .font(.system(size: 18))
//                .background(Color.red)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    
                    ProductCardView(image: "tango", title: "C1: Watch se 2")
                    ProductCardView(image: "watch", title: "C2: Watch se 2")
                    ProductCardView(image: "watch", title: "C3: Watch se 2")
                    ProductCardView(image: "watch", title: "C4: Watch se 2")
                    ProductCardView(image: "watch", title: "C5:Watch se 2")
                    ProductCardView(image: "watch", title: "C6:Watch se 2")
                    ProductCardView(image: "watch", title: "C7:Watch se 2")
                    
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    PrizesView()
}
