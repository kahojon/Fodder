//
//  KitchenProfile.swift
//  Fodder
//
//  Created by Jonathan Leung on 2016-05-13.
//  Copyright © 2016 Housewives. All rights reserved.
//

import UIKit

class KitchenProfile {
    
    // MARK: Properties
    var cookName: String
    var bannerPhoto: UIImage?
    var profilePhoto: UIImage?
    var rating: Int
    var kitchenName: String
    var location: String
    
    // MARK: Initialization
    init?(cookName: String, bannerPhoto: UIImage?, profilePhoto: UIImage?, rating: Int, kitchenName: String, location: String, distance: String){
        self.cookName = cookName
        self.bannerPhoto = bannerPhoto
        self.profilePhoto = profilePhoto
        self.rating = rating
        self.kitchenName = kitchenName
        self.location = location
    }
}
