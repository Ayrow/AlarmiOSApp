//
//  AddEditAlarmView.swift
//  AlarmiOSApp
//
//  Created by Aymeric Pilaert on 05/02/2023.
//

import SwiftUI

struct AddEditAlarmView: View {
    let currentAlarmIndex: Int?
    @State var alarmModel: AlarmModel
    @State private var showYouDidItView = true
    
    var body: some View {
        ZStack {
            backgroundColor
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                if showYouDidItView {
                    YouDidItView()
                }
                
                Text("ToBedWakeUpView")
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    showYouDidItView = false
                }
            }
        }
    }
}

struct AddEditAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AddEditAlarmView(currentAlarmIndex: nil, alarmModel: .DefaultAlarm())
    }
}
