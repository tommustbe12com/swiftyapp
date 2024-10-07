import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Display the image from the URL
            AsyncImage(url: URL(string: "https://tommustbe12.com/assets/profile.png")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
            } placeholder: {
                ProgressView() // Placeholder while the image loads
            }

            // Text below the image
            Text("Hello skibidi!")
                .font(.title)
                .padding()
        }
    }
}

@main
struct SimpleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
