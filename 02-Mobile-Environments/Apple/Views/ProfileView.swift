import SwiftUI

struct ProfileView: View {
    // Referencing the Model
    var user: UserProfile

    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: "person.crop.circle.badge.checkmark")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            
            Text(user.username)
                .font(.title)
                .bold()
            
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            StatusBadge(isOffline: user.isOfflineMode)
        }
    }
}

// Sub-component for clean code
struct StatusBadge: View {
    var isOffline: Bool
    var body: some View {
        Text(isOffline ? "OFFLINE MODE" : "ONLINE")
            .font(.caption)
            .padding(8)
            .background(isOffline ? Color.orange : Color.green)
            .foregroundColor(.white)
            .cornerRadius(5)
    }
}
