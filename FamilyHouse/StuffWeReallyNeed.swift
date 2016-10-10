//
//  Enums.swift
//  FamilyHouse
//
//  Created by Benjamin Su on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit



enum TVSeries  {
    case familyMatters
    case fullHouse
    
    var description: String {
        return self == .familyMatters ? "Family Matters" : "Full House"
    }
    
}

struct FilmLocation {
    let name : String
    let address : String
    var tvSeries : TVSeries
    
}

struct Character {
    let name : String
    let realLifeName : String
    let tvSeries : TVSeries
    var currentLocation : FilmLocation
    let image : UIImage
    
    func canReportToset(on location: FilmLocation) -> Bool {
        return location.address == currentLocation.address ? true : false
    }
    
    mutating func reportToSet(on location: FilmLocation) {
        if !canReportToset(on: location) {
            self.currentLocation = location
        }
    }
    
}


























