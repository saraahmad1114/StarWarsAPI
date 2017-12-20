//
//  VehiclesTableViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/9/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class VehiclesTableViewController: UITableViewController {
    
    let store = StarWarsVehicleDataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor.black
        self.store.getStarWarsVehicles(page: self.store.page) { (vehiclesArray) in
            OperationQueue.main.addOperation {
                self.tableView.reloadData()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.store.starWarsVehicleArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vehicleCell", for: indexPath)
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.black
        cell.textLabel?.text = self.store.starWarsVehicleArray[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastElement = self.store.starWarsVehicleArray.count-1
        if indexPath.row == lastElement{
            loadMoreData()
        }
    }
    
    func loadMoreData(){
        self.store.page = self.store.page + 1
        self.store.getStarWarsVehicles(page: self.store.page) { (starWarsVehiclesArray) in
            OperationQueue.main.addOperation({
                self.tableView.reloadData()
            })
            }
        }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "starshipSegue"{
//            if let destinationVC = segue.destination as? StarshipDetailViewController{
//                let neededIndexPath = self.tableView.indexPathForSelectedRow!
//                destinationVC.starShipObject = self.store.starWarsStarshipArray[neededIndexPath.row]
//            }
//        }
//    }
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vehicleSegue"{
        if let desinationVC = segue.destination as? VehicleDetailViewController{
            let neeededIndexPath = self.tableView.indexPathForSelectedRow
            desinationVC.vehicleObj = self.store.starWarsVehicleArray[(neeededIndexPath?.row)!]
            }
        }
    }

}
