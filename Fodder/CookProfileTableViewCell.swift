//
//  CookProfileTableViewCell.swift
//  Fodder
//
//  Created by Jonathan Leung on 2016-05-12.
//  Copyright © 2016 Housewives. All rights reserved.
//

import UIKit

class CookProfileTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var kitchenTitle: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var cookName: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
