
import SwiftUI

struct GrayedTextView: View {
    let text: String
    var font = Font.headline
    
    var body: some View {
        Text(text)
            .foregroundColor(.gray)
            .font(font)
    }
}

struct GrayedTextView_Previews: PreviewProvider {
    static var previews: some View {
        GrayedTextView(text: "Hello")
    }
}
