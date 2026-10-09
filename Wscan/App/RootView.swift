import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "No letters yet",
                systemImage: "envelope.open",
                description: Text("Scan or paste a letter to get started.")
            )
            .navigationTitle("Wscan")
        }
    }
}

#Preview {
    RootView()
}
