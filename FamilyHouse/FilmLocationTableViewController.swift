//
//  FilmLocationTableViewController.swift
//  FamilyHouse
//
//  Created by Benjamin Su on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FilmLocationTableViewController: UITableViewController {
    
    var filmLocations : [FilmLocation]!
    
    @IBOutlet var tableViewMeNow: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateFilmLocations()
        tableView.reloadData()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmLocations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath) as! FilmLocationTableViewCell
        
        cell.filmLocation = filmLocations[indexPath.row]
        
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? CharacterCollectionViewController {
            if let index = tableViewMeNow.indexPathForSelectedRow {
                
                dest.filmLocation = filmLocations[index.row]
            }
        }
    }
    
    
    func generateFilmLocations() {
        
        let backToTheFuture = FilmLocation(name: "Back To The Future", address: "Over There", tvSeries: .familyMatters )
        let forrestGump = FilmLocation(name: "Forrest Gump", address: "Every Where", tvSeries: .fullHouse)
        filmLocations = [backToTheFuture, forrestGump]
        
    }
    
}









