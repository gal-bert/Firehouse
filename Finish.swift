//
//  File.swift
//  firehouse
//
//  Created by Gregorius Albert on 24/04/22.
//

import SwiftUI

struct Finish: View {
    @Binding var rootActive:Bool
    var body: some View {
        ZStack {
            Color(UIColor(hue: 222/360, saturation: 100/100, brightness: 62/100, alpha: 1.0))
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Text("Congratulations!")
                        .foregroundColor(.orange)
                        .font(.system(size: 60))
                    
                    Image("medal")
                        .resizable()
                        .frame(width: 500, height: 500, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                    Text("Now you know which extinguisher to use! \n Stay safe and don't play with fire kids!")
                        .font(.system(size: 30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.orange)
                        .padding(.bottom).padding(.bottom)
                    
                    //                    NavigationLink(destination: Home(rootActive: false)) {
                    //                        Text("Go Home")
                    //                            .frame(width: 200, height: 50, alignment: .center)
                    //                            .background(Color.orange)
                    //                            .foregroundColor(Color.white)
                    //                            .cornerRadius(10)
                    //                    }
                    
                    Button("Finish"){
                        rootActive = false
                    }
                    .padding(.bottom)
                    .tint(.orange)
                    .buttonStyle(.bordered)
                }
                
            }
        }
    }
}

struct Finish_Preview: PreviewProvider {
    static var previews: some View {
        Finish(rootActive: .constant(false))
            .previewInterfaceOrientation(.portrait)
    }
}
