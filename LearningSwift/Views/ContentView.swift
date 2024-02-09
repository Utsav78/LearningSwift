//
//  ContentView.swift
//  LearningSwift
//
//  Created by Utsav Budathoki on 17/1/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
