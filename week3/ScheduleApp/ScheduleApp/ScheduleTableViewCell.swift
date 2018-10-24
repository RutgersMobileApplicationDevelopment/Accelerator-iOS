//
//  ScheduleTableViewCell.swift
//  ScheduleApp
//
//  Created by Shashank Sharma on 10/24/18.
//  Copyright © 2018 RU Angry. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var BuildingImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(className: String, buildingImage: UIImage, time: String) {
        self.BuildingImage.image = buildingImage
        self.timeLabel.text = time
        self.classNameLabel.text = className
    }

}
