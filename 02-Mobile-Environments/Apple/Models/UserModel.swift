import Foundation

// Standard Data Model for Apple Ecosystem
struct UserProfile: Identifiable, Codable {
    var id: UUID = UUID()
    var username: String
    var email: String
    var isOfflineMode: Bool
    var lastLogin: Date
}
