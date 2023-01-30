
import Foundation
import SwiftUI

struct AlarmModel: Identifiable {
    let id = UUID().uuidString
    
    let title: String
    let body: String
    let repeats: Bool
    var sound: Sounds // TODO: fix this - define Sounds
    var alarmEnabled: Bool
    
    var start: Date
    var end: Date
    
    var activity: String
    var colorIndex: Int
    var activityColor: Color {
        mainColors[colorIndex]
    }
    
    var timeInterval: TimeInterval {
        end - start
    }
    
    var startTime: TimeModel {
        DateToTimeModel(date: start)
    }
    var endTime: TimeModel {
        DateToTimeModel(date: end)
    }
    
    static func DefaultAlarm() -> AlarmModel {
        AlarmModel(
            title: "Activity Completed",
            body: "Have a great day",
            repeats: false,
            sound: .lagrima,
            alarmEnabled: false,
            start: Date(),
            end: Date(),
            activity: activities[0],
            colorIndex: 0)
    }
    
}