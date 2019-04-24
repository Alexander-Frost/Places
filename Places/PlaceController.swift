//
//  PlaceController.swift
//  Places
//
//  Created by Alex on 4/22/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation


class PlaceController {
    
    
    var places: [Place] = [Place]()
    
    init() {
        // Test data
        createPlace(with: "Rochester, NY", latitude: 43.1, longitude: -77.6)
        createPlace(with: "San Francisco, CA", latitude: 37.7, longitude: -122.4)
    }
    
    func createPlace(with name: String, latitude: Double, longitude: Double) {
        let place = Place(name: name, latitude: latitude, longitude: longitude)
        
        places.append(place)
    }
    
    
}
