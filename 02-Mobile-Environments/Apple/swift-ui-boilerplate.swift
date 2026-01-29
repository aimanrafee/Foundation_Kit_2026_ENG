/**
 * @name: SwiftUI Master Boilerplate
 * @description: Core UI components for modern Apple cross-platform development.
 * @version: 1.0.0 (2026)
 */

import SwiftUI

// 1. MAIN ENTRY POINT
@main
struct FoundationKitApp: App {
    var body: some Scene {
        WindowGroup {
            MainDashboardView()
        }
    }
}

// 2. MAIN DASHBOARD VIEW
struct MainDashboardView: View {
    @State private var userName: String = "Foundation User"
    @State private var isOffline: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Header Component
                HeaderComponent(title: "Foundation Kit 2026")
                
                // Profile Section
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.blue)
                    
                    Text("Welcome, \(userName)")
                        .font(.headline)
                }
                .padding()
                
                // Status Toggle
                Toggle(isOn: $isOffline) {
                    Text("Offline Mode")
                        .font(.subheadline)
                }
                .padding(.horizontal)

                Spacer()
                
                // Action Button
                Button(action: {
                    print("System Initialized")
                }) {
                    Text("START SYSTEM")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Dashboard")
        }
    }
}

// 3. REUSABLE COMPONENT (Sub-View)
struct HeaderComponent: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.black)
            .padding()
    }
}

// 4. PREVIEW PROVIDER (For Developer Tools)
struct MainDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        MainDashboardView()
    }
}
