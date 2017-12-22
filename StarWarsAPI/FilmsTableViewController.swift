//
//  FilmsTableViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/9/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class FilmsTableViewController: UITableViewController {
    
    let store = StarWarsFilmsDataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor.black
        self.store.getStarWarsFilms { (filmsArray) in
            print("*********************")
            print(filmsArray)
            print("*********************")
            OperationQueue.main.addOperation {
                self.tableView.reloadData()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.store.starWarsFilmsArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath)
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.black
        cell.textLabel?.text = self.store.starWarsFilmsArray[indexPath.row].title
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("1")
        if segue.identifier == "filmSegue"{
            if let destinationVC = segue.destination as? FilmDetailViewController{
                let neededIndexPath = self.tableView.indexPathForSelectedRow
                destinationVC.filmObj = self.store.starWarsFilmsArray[(neededIndexPath?.row)!]
            }
        }
    }
    
}
