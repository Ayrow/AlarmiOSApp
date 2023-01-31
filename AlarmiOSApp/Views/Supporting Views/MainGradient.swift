//
//  MainGradient.swift
//  AlarmiOSApp
//
//  Created by Aymeric Pilaert on 31/01/2023.
//

import SwiftUI

struct MainGradient: View {
    var startRadius: CGFloat = 0.0
    let endRadius: CGFloat
    var scaleX: CGFloat = 2.0
    var opacityLinGrad = 0.5
    var opacityRadGrad = 0.5
    var yellowColor = yellow
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [blue, purple, pink],
                startPoint: .top,
                endPoint: .bottom)
            .opacity(opacityLinGrad)
            
            RadialGradient(
                colors: [yellow, .clear],
                center: .bottom,
                startRadius: startRadius,
                endRadius: endRadius)
            .opacity(opacityRadGrad)
            .scaleEffect(x: scaleX)
        
        }
    }
}

struct MainGradient_Previews: PreviewProvider {
    static var previews: some View {
        MainGradient(endRadius: 75)
            .frame(width: screenWidth, height: 100)
    }
}
