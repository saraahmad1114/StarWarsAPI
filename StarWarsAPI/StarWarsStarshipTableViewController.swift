//
//  StarWarsStarshipTableViewController.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/19/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class StarWarsStarshipTableViewController: UITableViewController {
    
    let store = StarWarsStarshipDataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.backgroundColor = UIColor.black
        self.store.getStarWarsStarshipInformation(page: self.store.page) { (starWarsStarArrayParsed) in
            print("************************")
            print(starWarsStarArrayParsed)
            print("************************")
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
        return self.store.starWarsStarshipArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "starshipCell", for: indexPath)
        cell.textLabel?.textColor = UIColor.white
            cell.backgroundColor = UIColor.black
            cell.textLabel?.text = self.store.starWarsStarshipArray[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastElement = self.store.starWarsStarshipArray.count-1
        if indexPath.row == lastElement{
            loadMoreData()
        }
    }
    
    func loadMoreData(){
        self.store.page = self.store.page + 1
        self.store.getStarWarsStarshipInformation(page: self.store.page) { (starShipArray) in
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
