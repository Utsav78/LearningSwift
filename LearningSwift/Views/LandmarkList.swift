//
//  LandmarkList.swift
//  LearningSwift
//
//  Created by Utsav Budathoki on 1/2/2024.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        //        List(landmarks, id: \.id) { landmark in
        //            LandmarkRow(landmark: landmark)
        //        }
        // when we use Identifiable in Landmark, we can directly create the list of landmarks . no id required
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorite Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList().environment(ModelData())
}
