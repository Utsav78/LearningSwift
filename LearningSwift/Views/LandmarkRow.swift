//
//  LandmarkRow.swift
//  LearningSwift
//
//  Created by Utsav Budathoki on 31/1/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            // why both the view align at the left end when spacer is used ??
            Spacer()
        }
        
    }
}

#Preview {
    LandmarkRow(landmark: landmarks[0])
}

