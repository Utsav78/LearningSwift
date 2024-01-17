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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, World!")
            Text("Hello Utsav!")
                .onTapGesture {
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Popup message"),
                          message: Text("You clicked the text"),
                          dismissButton: .default(Text("OK"))
                          )
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
