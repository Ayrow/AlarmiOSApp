

import Foundation

enum Sounds: String, CaseIterable {
    case wake_up = "Sound Wake up"
    case lagrima = "Lagrima"
    
    func formatSoundName() -> String {
        String(describing: self)
            .replacingOccurrences(of: "_", with: " ")
            .capitalized
    }
}
