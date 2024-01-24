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
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
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
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("It is a surprising granitic formation, 24 metres (79 feet) high, whose form reminds of a turtle. Its old name was Mungut Khad. Located at the foothills of a mountain covered of pines, this rocky formation is incontestably a photo opportunity while you're on the road for Terelj.")
                    .font(.none)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
