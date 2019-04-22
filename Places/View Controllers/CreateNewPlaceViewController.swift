//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by Alex on 4/22/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresenter {
    var placeController: PlaceController?
    
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
    
    @IBAction func saveBtnPressed(_ sender: UIButton) {
        print("Saved")
        
        guard let name = locationTextField.text,
            let latitudeString = latitudeTextField.text,
            let latitude = Double(latitudeString),
            let longitudeString = longitudeTextField.text,
            let longitude = Double(longitudeString)
        else { return }
        
        
        placeController?.createPlace(with: name, latitude: latitude, longitude: longitude)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
