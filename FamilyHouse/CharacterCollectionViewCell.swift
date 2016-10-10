//
//  CharacterCollectionViewCell.swift
//  FamilyHouse
//
//  Created by Paul Tangen on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var character : Character! {
        didSet {
            imageView.image = character.image
            nameLabel.text = character.name
        }
    }
}
