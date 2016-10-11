//
//  CharacterCollectionViewController.swift
//  FamilyHouse
//
//  Created by Benjamin Su on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit


class CharacterCollectionViewController: UICollectionViewController {
    
    var characters : [Character]!
    var filmLocation : FilmLocation!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateCharaters()
        collectionView?.allowsMultipleSelection = true
        
        //        print(filmLocation)
        
    }
    @IBAction func doneButton(_ sender: UIButton) {
        print(collectionView?.indexPathsForSelectedItems)
        for itemIndex in (collectionView?.indexPathsForSelectedItems)! {
            if characters[itemIndex.item].canReportToset(on: filmLocation) {
                print("\(characters[itemIndex.row].name) belongs here.")
            } else {
                print("\(characters[itemIndex.row].name) doesn't belong here.")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return characters.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "prototypeCell2", for: indexPath) as! CharacterCollectionViewCell
        
        cell.character = characters[indexPath.row]
        
        // Configure the cell
        
        return cell
    }
    
    
    func generateCharaters(){
        
        let loc1 = FilmLocation(name: "Back To The Future", address: "Over There", tvSeries: .familyMatters )
        let char1 = Character(name: "Bobby Bobhead", realLifeName: "Robert", tvSeries: .familyMatters, currentLocation: loc1, image: UIImage(named: "urkle")!)
        
        
        let loc2 = FilmLocation(name: "Forrest Gump", address: "Every Where", tvSeries: .fullHouse)
        let char2 = Character(name: "Dump", realLifeName: "Grump", tvSeries: .fullHouse, currentLocation: loc2, image: UIImage(named: "Waldo")!)
        
        characters = [char1,char2]
    }
    
    
}
