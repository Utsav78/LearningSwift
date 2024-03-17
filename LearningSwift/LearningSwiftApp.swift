//
//  LearningSwiftApp.swift
//  LearningSwift
//
//  Created by Utsav Budathoki on 17/1/2024.
//

import SwiftUI

@main
struct LearningSwiftApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
            
        }
#if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
#endif
    }
}
