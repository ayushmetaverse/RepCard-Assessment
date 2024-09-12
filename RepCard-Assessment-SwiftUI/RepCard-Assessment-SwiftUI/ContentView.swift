import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                HeaderView()
                GradientView()
                PrizesView()
                SpreadSheetView()
            }
            FloatingButtonView()
                .offset(x:0 , y: 340)
        }
    }
}


#Preview {
    MainView()
}
