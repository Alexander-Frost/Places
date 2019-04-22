//
//  PlacesPresenter.swift
//  Places
//
//  Created by Alex on 4/22/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation

protocol PlacesPresenter: AnyObject {
    // way to communicate
    
    var placeController: PlaceController? {set get}
}
