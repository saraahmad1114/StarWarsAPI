//
//  StarWarsPlanetsTableViewController.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/19/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class StarWarsPlanetsTableViewController: UITableViewController {
    
    let store = StarWarsPlanetsDataStore.sharedInstance

    override func viewDidLoad() {
        self.tableView.backgroundColor = UIColor.black
        super.viewDidLoad()
        self.store.getStarWarsPlanetsInformation(page: self.store.page) { (planetsArray) in
            print("********************")
            print(planetsArray)
            print("********************")
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
        return self.store.starWarsPlanetsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.black
        cell.textLabel?.text = self.store.starWarsPlanetsArray[indexPath.row].name
        return cell
    }

    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastElement = self.store.starWarsPlanetsArray.count-1
        if indexPath.row == lastElement{
            loadMoreData()
        }
    }
    
    func loadMoreData(){
        self.store.page = self.store.page + 1
        self.store.getStarWarsPlanetsInformation(page: self.store.page) { (newArray) in
            OperationQueue.main.addOperation({
                self.tableView.reloadData()
            })
        }
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
