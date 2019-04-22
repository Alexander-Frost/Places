//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Alex on 4/22/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter {
    var placeController: PlaceController?
    var mapViewController: MapViewController?
    var placesTablesViewController: PlacesTableViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlacesTable"{
            // get a places table view controller
            guard let placesTVC = segue.destination as? PlacesTableViewController else {return}
            
            // set place controller
            placesTVC.placeController = placeController
            placesTVC.delegate = self
            placesTablesViewController = placesTVC
            
        } else if segue.identifier == "MapView" {
            // get map view controlle
            guard let mapVC = segue.destination as? MapViewController else {return}
            
            mapViewController = mapVC
        }
    }
}

extension VisitedPlacesViewController: PlaceSelectionDelegate{
    func placeWasSelected(place: Place) {
        // pass the location to the map view controllers
        mapViewController?.location = place.location
    }
}
