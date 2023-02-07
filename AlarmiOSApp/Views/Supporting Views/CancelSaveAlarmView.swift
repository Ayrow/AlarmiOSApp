//
//  CancelSaveAlarmView.swift
//  AlarmiOSApp
//
//  Created by Aymeric Pilaert on 05/02/2023.
//

import SwiftUI

struct CancelSaveAlarmView: View {
    let currentAlarmIndex: Int?
    @Binding var alarmModel: AlarmModel
    
    var body: some View {
        HStack {
            // Cancel button
            Button {
                // Cancel todo
            } label: {
                Text("Cancel")
            }
            
            Spacer()
            
            Button {
                // Save todo
                if currentAlarmIndex != nil {
                    // TODO: Edit alarm to view model
                } else {
                    // TODO: Append alarm to view model
                }
            } label: {
                Text("Save")
            }

            
        }
    }
}

struct CancelSaveAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        CancelSaveAlarmView(currentAlarmIndex: nil, alarmModel: .constant(.DefaultAlarm()))
    }
}
