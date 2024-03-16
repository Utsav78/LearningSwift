//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Utsav Budathoki on 12/3/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
