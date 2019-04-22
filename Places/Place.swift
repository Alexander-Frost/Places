//
//  Place.swift
//  Places
//
//  Created by Alex on 4/22/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

struct Place{
    
    var name: String
    var location: (latitude: Double, longitude: Double)
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.location = (latitude: latitude, longitude: longitude)
    }
}
