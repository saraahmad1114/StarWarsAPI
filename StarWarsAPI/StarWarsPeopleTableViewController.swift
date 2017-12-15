//  StarWarsPeopleTableViewController.swift
//  StarWarsAPI
//  Created by Flatiron School on 10/19/17.
//  Copyright © 2017 Flatiron School. All rights reserved.

import UIKit

class StarWarsPeopleTableViewController: UITableViewController {
    
    let store = StarWarsPeopleDataStore.sharedInstance
    var page = 1

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor.black
        self.store.getStarWarsPeopleInformation(page: self.store.page) { (starwarsPeopleArray) in
            print("**************************")
            print(starwarsPeopleArray)
            print("**************************")
            OperationQueue.main.addOperation {
                self.tableView.reloadData()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.store.starWarsPeopleArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath)
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.black
        cell.textLabel?.text = self.store.starWarsPeopleArray[indexPath.row].name
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */


    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("1")
        if segue.identifier == "peopleDetailSegue"{
            print("2")
            if let destinationVC = segue.destination as? PeopleDetailViewController {
                //Neither does this print
                print("3")
                let neededIndexPath = self.tableView.indexPathForSelectedRow!
                destinationVC.starWarsPeopleObject = self.store.starWarsPeopleArray[neededIndexPath.row]
                //This portion won't be print
                print("******************************************")
                print(destinationVC.starWarsPeopleObject)
                print("******************************************")
            }
        }
    }
    

}
