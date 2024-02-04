//
//  Landmark.swift
//  LearningSwift
//
//  Created by Utsav Budathoki on 29/1/2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
           CLLocationCoordinate2D(
               latitude: coordinates.latitude,
               longitude: coordinates.longitude)
       }
    // why do we need codable ?
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}