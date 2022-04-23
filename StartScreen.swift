import SwiftUI

let BLUE_COLOR = UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0)

struct StartScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(BLUE_COLOR)
                    .ignoresSafeArea()
                VStack {
                    Image("logo_clear")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(20)
                        .padding(.bottom).padding(.bottom)
                    
                    Text("Firehouse!")
                        .foregroundColor(.orange)
                        .font(.system(size: 40))
                    
                    Text("Know your extinguishers")
                        .foregroundColor(.orange)
                        .font(.system(size: 40))
                        .padding(.bottom)
                    
                    Text("🔥 + 🧯 = ✅")
                        .foregroundColor(.orange)
                        .font(.system(size: 40))
                        .padding(.bottom)
                        .padding(.bottom)
                        .padding(.bottom)
                    
                    NavigationLink(destination: Home()) {
                        Text("Get Started")
                            .frame(width: 200, height: 50, alignment: .center)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    }
                    
                }
            }
        }
    }
}
