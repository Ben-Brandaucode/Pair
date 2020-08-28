//
//  PairListTableViewController.swift
//  BensAssesment6
//
//  Created by Ben Brandau Brandau on 8/28/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import UIKit

class PairListTableViewController: UITableViewController {
//Outlets
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//Actions
    @IBAction func addButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "add a member to randomizer", message: "add member name", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        let cancelButton = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        let addButton = UIAlertAction(title: "add", style: .default) { (_) in
            guard let memberName = alert.textFields?[0].text, !memberName.isEmpty else { return}
            // add item with Controller
            memberName.shared.createmember
        }
            
        }
    }
    
    @IBAction func randomizeButtontapped(_ sender: Any) {
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

//MARK: Formatting
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
