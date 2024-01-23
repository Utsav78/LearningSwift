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
        VStack(alignment: .leading) {
            Text("Turtle Rocks")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                    .onTapGesture {
                        showAlert = true
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Popup message"),
                              message: Text("You clicked the text"),
                              dismissButton: .default(Text("OK"))
                              )
                }
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
    
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
