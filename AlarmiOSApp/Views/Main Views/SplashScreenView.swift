//
//  SplashScreenView.swift
//  AlarmiOSApp
//
//  Created by Aymeric Pilaert on 31/01/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var opacity = 0.3
    @State private var fontSize = 12.0
    
    var body: some View {
        if isActive {
            MainAlarmView()
        } else {
            ZStack {
             FourCoolCircles(
                color1: blue,
                color2: .clear
             )
                
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Hello there")
                        Text("Let's add an alarm")
                    }
                    .multilineTextAlignment(.leading)
                    .padding()
                    .onAppear {
                        withAnimation(
                            .easeIn(duration: 1.5)
                        ) {
                            opacity = 1.0
                            fontSize = 36.0
                        }
                    }
                    
                    Spacer()
                    
                    Text("Some image")
                }
                
                
            }
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}