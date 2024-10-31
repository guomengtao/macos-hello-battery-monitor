import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello Tom")
                .font(.largeTitle)
                .padding()
        }
        .frame(width: 300, height: 200)
    }
}

#Preview {
    ContentView()
} 