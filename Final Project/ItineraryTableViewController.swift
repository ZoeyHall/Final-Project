//
//  ItineraryTableViewController.swift
//  Final Project
//
//  Created by scholar on 8/4/22.
//

import UIKit

class ItineraryTableViewController: UITableViewController {

    var tasks : [TaskCD] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        func getTasks() {
          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            if let coreDataTasks = try? context.fetch(TaskCD.fetchRequest()) as? [TaskCD] {
                if let theTasks = coreDataTasks {
                    tasks = theTasks
                    tableView.reloadData()
                }
            }
          }
        }
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
      getTasks()
    }
   /* func createTasks() -> [Tasks] {

        let brunch = Tasks()
        brunch.name = "Brunch"
        brunch.time = "11:00 AM"
        brunch.date = "August 4"
        brunch.location = "Little Neck"
        
      let sightseeing = Tasks()
        sightseeing.name = "Sightseeing"
        sightseeing.time = "2:00 PM"
        sightseeing.date = "August 4"
        sightseeing.location = "Gyeongbokgung Palace"
        sightseeing.important = true


   

      return [brunch, sightseeing]
    } */

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let task = tasks[indexPath.row]
         
        if task.important {
          cell.textLabel?.text = "❗️" + task.name
        } else {
          cell.textLabel?.text = task.name
        }
        
          return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddToItineraryViewController {
        addVC.previousVC = self
      }
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
