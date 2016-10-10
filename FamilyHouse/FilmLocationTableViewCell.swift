//
//  FilmLocationTableViewCell.swift
//  FamilyHouse
//
//  Created by Benjamin Su on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FilmLocationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var seriesLabel: UILabel!
    
    var filmLocation : FilmLocation! {
        didSet {
            nameLabel.text = filmLocation.name
            addressLabel.text = filmLocation.address
            seriesLabel.text = filmLocation.tvSeries.description
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
