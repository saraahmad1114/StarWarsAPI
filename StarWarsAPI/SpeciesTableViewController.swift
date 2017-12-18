//
//  SpeciesTableViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/8/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class SpeciesTableViewController: UITableViewController {
    
    let store = StarWarsSpeciesDataStore.sharedInstance
    
    override func viewDidLoad() {
        self.tableView.backgroundColor = UIColor.black
        super.viewDidLoad()
        self.store.getStarWarsSpeciesInformation(page: self.store.page) { (speciesArray) in
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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.store.starWarsSpeciesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "speciesCell", for: indexPath)
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.black
        cell.textLabel?.text = self.store.starWarsSpeciesArray[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastElement = self.store.starWarsSpeciesArray.count-1
        if indexPath.row == lastElement{
            loadMoreData()
        }
    }
    
    func loadMoreData(){
        self.store.page = self.store.page + 1
        self.store.getStarWarsSpeciesInformation(page: self.store.page) { (speciesArray) in
            OperationQueue.main.addOperation({
                self.tableView.reloadData()
            })
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
