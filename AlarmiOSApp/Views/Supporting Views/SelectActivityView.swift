//
//  SelectActivityView.swift
//  AlarmiOSApp
//
//  Created by Aymeric Pilaert on 07/02/2023.
//

import SwiftUI

struct SelectActivityView: View {
    @Binding var currentColorIndex: Int
    @Binding var currentActivity: String
    
    var currentColor: Color {
        mainColors[currentColorIndex]
    }
    
    var nextIndex: Int {
        (currentColorIndex + 1) % mainColors.count
    }
    
    var body: some View {
        HStack(spacing: 10) {
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                        ForEach(activities, id: \.self) { activity in
                            let isSelectedActivity = activity == currentActivity
                            Image(systemName: activity)
                                .font(isSelectedActivity ? .title2 : .subheadline)
                                .foregroundColor(isSelectedActivity ? currentColor : nickel)
                                .opacity(isSelectedActivity ? 1.0 : 0.7)
                                .onTapGesture {
                                    withAnimation {
                                        currentActivity = activity
                                    }
                                }
                        }
                }
            }
            
            Circle()
                .fill(currentColor)
                .frame(width: 20, height: 20)
                .shadow(color: currentColor.opacity(0.7), radius: 10, x: 0, y: 5)
                .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 3)
                )
                .onTapGesture {
                    withAnimation {
                        currentColorIndex = nextIndex
                    }
                }
        }
        
    }
}

struct SelectActivityView_Previews: PreviewProvider {
    static var previews: some View {
        SelectActivityView(currentColorIndex: .constant(0), currentActivity: .constant(activities[0]))
            .padding(.horizontal)
    }
}
