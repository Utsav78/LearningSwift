//
//  LandmarkList.swift
//  LearningSwift
//
//  Created by Utsav Budathoki on 1/2/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        // when we use Identifiable in Landmark, we can directly create the list of landmarks . no id required 
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}
