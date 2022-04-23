import SwiftUI


struct Home: View {
    @State private var isActive = false
    var body: some View {
        ZStack {
            Color(UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0))
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    Text("Did you know about these different fire extenguishers?")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom).padding(.bottom)
                    
                    // Dry Powder
                    HStack {
                        Image("fire")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                            .cornerRadius(20)
                            .padding(.bottom).padding(.bottom)
                        
                        
                        VStack (alignment: .leading) {
                            Text("Dry Powder Spray")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .padding(.bottom, 10)
                            
                            Text("Very safe for household and building usages ")
                                .foregroundColor(.white)
                                .padding(.bottom, 10)
                            
                            Text("- Wood Fire ✅")
                                .foregroundColor(.white)
                            Text("- Flammable liquid fire ✅")
                                .foregroundColor(.white)
                            Text("- Gas fire ✅")
                                .foregroundColor(.white)
                            Text("- Electrical equipment fire ✅")
                                .foregroundColor(.white)
                            Text("- NOT FOR OTHER TYPES OF FIRE xxxxxxxx ")
                                .foregroundColor(Color(UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0)))
                            Text("")
                        }.padding(.leading, 20)
                    }
                    
                    // Foam Spray
                    HStack {
                        Image("fire")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                            .cornerRadius(20)
                            .padding(.bottom).padding(.bottom)
                        
                        
                        VStack (alignment: .leading) {
                            Text("Foam Spray")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .padding(.bottom, 10)
                            
                            Text("Contains water 💧")
                                .foregroundColor(.white)
                                .padding(.bottom, 10)
                            
                            Text("- Flammable liquid fire ✅")
                                .foregroundColor(.white)
                            Text("- Wood, paper, and textile Fire ✅")
                                .foregroundColor(.white)
                            Text("- NOT FOR ELECTRICAL FIRES ❌❌❌ ")
                                .foregroundColor(.orange)
                            Text("- NOT FOR METAL FIRES ❌❌❌ ")
                                .foregroundColor(.orange)
                            Text("- NOT FOR OTHER TYPES OF FIRE xxxxxxxx ")
                                .foregroundColor(Color(UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0)))
                            Text("")
                            
                        }.padding(.leading, 20)
                    }
                    
                    // CO2 Spray
                    HStack {
                        Image("fire")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                            .cornerRadius(20)
                            .padding(.bottom).padding(.bottom)
                        
                        
                        VStack (alignment: .leading) {
                            Text("CO2 Spray")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .padding(.bottom, 10)
                            
                            Text("Releases heat from objects 🥵")
                                .foregroundColor(.white)
                                .padding(.bottom, 10)
                            
                            Text("- Flammable liquid fire ✅")
                                .foregroundColor(.white)
                            Text("- Electrical equipment fire ✅")
                                .foregroundColor(.white)
                            Text("- NOT FOR WOOD, PAPER, AND TEXTILES \n FIRE ❌❌❌ ")
                                .foregroundColor(.orange)
                            Text("- NOT FOR OTHER TYPES OF FIRE xxxxxxxx ")
                                .foregroundColor(Color(UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0)))
                            Text("")
                            
                            
                        }.padding(.leading, 20)
                        
                    }
                    // Water Spray
                    HStack {
                        Image("fire")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                            .cornerRadius(20)
                            .padding(.bottom).padding(.bottom)
                        
                        
                        VStack (alignment: .leading) {
                            Text("Water Spray")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .padding(.bottom, 10)
                            
                            Text("Purely water 💧")
                                .foregroundColor(.white)
                                .padding(.bottom, 10)
                            
                            Text("- Only for wood, paper, and textile Fire ✅")
                                .foregroundColor(.white)
                            Text("- NOT FOR OTHER TYPES OF FIRE ❌❌❌ ")
                                .foregroundColor(.orange)
                            Text("")
                            Text("")
                            Text("")
                            
                        }.padding(.leading, 20)
                    }
                    
                    NavigationLink(
                        destination: Quiz(rootActive: $isActive),
                        isActive: $isActive
                    )
                    {
                        Text("Start Quiz")
                            .frame(width: 200, height: 50, alignment: .center)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                            .padding(.top).padding(.top)
                            .padding(.bottom).padding(.bottom)
                            .padding(.bottom).padding(.bottom)
                    }
                }
            }
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .previewInterfaceOrientation(.portrait)
    }
}
