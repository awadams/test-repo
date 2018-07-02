//
//  ScheduledMealTableViewCell.swift
//  FoodForThought
//
//  Created by Andy Adams on 6/29/18.
//  Copyright © 2018 Jordan Ehrenholz. All rights reserved.
//

import UIKit

class ScheduledMealTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var scheduledMealDisplay: ScheduledMealControl!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
