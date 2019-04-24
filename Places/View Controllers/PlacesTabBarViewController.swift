//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by Alex on 4/22/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class PlacesTabBarViewController: UITabBarController {

    let placeController = PlaceController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        for childViewController in children{
            
            if let childViewController = childViewController as? PlacesPresenter{
                childViewController.placeController = placeController
            }
        }
    }


}
