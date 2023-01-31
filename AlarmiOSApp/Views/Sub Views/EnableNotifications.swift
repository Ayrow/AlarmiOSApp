//
//  EnableNotifications.swift
//  AlarmiOSApp
//
//  Created by Aymeric Pilaert on 31/01/2023.
//

import SwiftUI

struct EnableNotifications: View {
    var body: some View {
        ZStack {
            FourCoolCircles()
            VStack {
                
                Spacer()
                
                CoolTextView(
                    text: LocalizedStringKey("Enable notifications, please"),
                    size: 48)
                .multilineTextAlignment(.center)
                
                Spacer()
                
                Button(action: {
                    // TODO: enable notifications
                    print("Todo: Enable")
                }, label: {
                    ButtonView(text: "Enable")
                })
            }
        }
    }
}

struct EnableNotifications_Previews: PreviewProvider {
    static var previews: some View {
        EnableNotifications()
    }
}
