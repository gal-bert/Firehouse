//
//  File.swift
//  firehouse
//
//  Created by Gregorius Albert on 23/04/22.
//

import SwiftUI


struct Quiz:View {
    
    @Binding var rootActive:Bool
    @State private var presentPowder = false
    @State private var presentFoam = false
    @State private var presentWater = false
    @State private var linkActive = false
    
    var body: some View {
        ZStack {
            Color(UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0))
                .ignoresSafeArea()
            VStack {
                Image("fire")
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(25)
                    .padding(.bottom)
                Text("If there your laptop is connected to the outlet and catch on fire due to overheating, which one should you use?")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.bottom)
                
                HStack {
                    Button("Dry Powder Spray") {
                        presentPowder = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .padding(.trailing, 30)
                    .alert(isPresented: $presentPowder) {
                        Alert(
                            title: Text("Correct!"),
                            message: Text("Dry powder is the safest types of extinguisher and very effective for electrical fires"),
                            dismissButton: .default(Text("Continue")) {
                                linkActive = true
                            }
                        )
                    }
                    
                    NavigationLink(destination: Quiz2(rootActive: $rootActive), isActive: $linkActive) {

                    }
                    
                    Button("Foam Spray") {
                        presentFoam = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .padding(.trailing, 20)
                    .alert(isPresented: $presentFoam) {
                        Alert(
                            title: Text("Incorrect!"),
                            message: Text("Foam spray contains water than can create further damage and elecrical safety hazard")
                        )
                    }
                    
                    Button("Water Spray") {
                        presentWater = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .alert(isPresented: $presentWater) {
                        Alert(
                            title: Text("Incorrect!"),
                            message: Text("Using water might get you electrocuted and creates further damage")
                        )
                    }
                }
            }
        }
    }
}

struct Quiz2:View {
    
    @Binding var rootActive:Bool
    @State private var presentPowder = false
    @State private var presentFoam = false
    @State private var presentWater = false
    @State private var linkActive = false
    
    var body: some View {
        ZStack {
            Color(UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0))
                .ignoresSafeArea()
            VStack {
                Image("fire")
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(25)
                    .padding(.bottom)
                Text("You spilled a tall can of grill firelighter, and it was ignited by the lighted barbecue coal. Which one should you use?")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.bottom)
                
                HStack {
                    Button("Water Spray") {
                        presentWater = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .padding(.trailing, 25)
                    .alert(isPresented: $presentWater) {
                        Alert(
                            title: Text("Incorrect!"),
                            message: Text("Using water might get you spread the ignited fuel and makes a bigger fire")
                        )
                    }
                    
                    Button("Dry Powder Spray") {
                        presentPowder = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .padding(.trailing, 30)
                    .alert(isPresented: $presentPowder) {
                        Alert(
                            title: Text("Correct!"),
                            message: Text("Dry powder is the safest types of extinguisher and very effective for flammable liquid fire"),
                            dismissButton: .default(Text("Continue")) {
                                linkActive = true
                            }
                        )
                    }
                    
                    NavigationLink(destination: Quiz3(rootActive: $rootActive), isActive: $linkActive) {

                    }
                    
                    
                    Button("Foam Spray") {
                        presentFoam = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .padding(.trailing, 20)
                    .alert(isPresented: $presentFoam) {
                        Alert(
                            title: Text("Correct!"),
                            message: Text("Foam spray is also effective for flammable liquid fire"),
                            dismissButton: .default(Text("Continue")) {
                                linkActive = true
                            }
                        )
                        
                    }
                }
            }
        }
    }
}

struct Quiz3:View {
    
    @Binding var rootActive:Bool
    @State private var presentCO2 = false
    @State private var presentFoam = false
    @State private var presentWater = false
    @State private var linkActive = false
    
    var body: some View {
        ZStack {
            Color(UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0))
                .ignoresSafeArea()
            VStack {
                Image("fire")
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(25)
                    .padding(.bottom)
                Text("Your room caught on fire and it burned your blanket and pillows. Which one should you use?")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.bottom)
                
                HStack {
                    Button("Water Spray") {
                        presentWater = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .padding(.trailing, 25)
                    .alert(isPresented: $presentWater) {
                        Alert(
                            title: Text("Correct!"),
                            message: Text("Water can be used for this kind of fire! You can also use a water hose reel"),
                            dismissButton: .default(Text("Continue")) {
                                linkActive = true
                            }
                        )
                    }
                    
                    NavigationLink(destination: Finish(rootActive: $rootActive), isActive: $linkActive) {

                    }
                    
                    Button("Foam Spray") {
                        presentFoam = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .padding(.trailing, 20)
                    .alert(isPresented: $presentFoam) {
                        Alert(
                            title: Text("Correct!"),
                            message: Text("Foam spray is also effective for flammable liquid fire"),
                            dismissButton: .default(Text("Continue")) {
                                linkActive = true
                            }
                        )
                        
                    }
                    
                    Button("CO2 Spray") {
                        presentCO2 = true
                    }
                    .foregroundColor(.orange)
                    .buttonStyle(.bordered)
                    .tint(.orange)
                    .padding(.trailing, 20)
                    .alert(isPresented: $presentCO2) {
                        Alert(
                            title: Text("Incorrect!"),
                            message: Text("CO2 spray might release all the accumulated heat and boost the fire and might act as an accelerant")
                        )
                        
                    }
                }
            }
        }
    }
}


//struct Quiz_Previews: PreviewProvider {
//    static var previews: some View {
//        Quiz()
//            .previewInterfaceOrientation(.portrait)
//    }
//}
//
//struct Quiz2_Previews: PreviewProvider {
//    static var previews: some View {
//        Quiz2()
//            .previewInterfaceOrientation(.portrait)
//    }
//}
//
//struct Quiz3_Previews: PreviewProvider {
//    static var previews: some View {
//        Quiz3()
//            .previewInterfaceOrientation(.portrait)
//    }
//}

