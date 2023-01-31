//
//  FourCoolCircles.swift
//  AlarmiOSApp
//
//  Created by Aymeric Pilaert on 31/01/2023.
//

import SwiftUI

struct CoolCircleView: View {
    let radius: CGFloat
    var color1 = yellow
    var color2 = Color.clear
    var body: some View {
        Circle()
            .fill(LinearGradient(colors: [color1, color2], startPoint: .top, endPoint: .bottom))
            .frame(width: radius, height: radius)
    }
}

struct FourCoolCircles: View {
    var color1 = darkYellow
    var color2 = lightYellow
    @State private var offsetX: [CGFloat] = [0,0,0,0]
    @State private var offsetY: [CGFloat] = [0,0,0,0]
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)


    }
}

struct FourCoolCircles_Previews: PreviewProvider {
    static var previews: some View {
        FourCoolCircles()
    }
}
