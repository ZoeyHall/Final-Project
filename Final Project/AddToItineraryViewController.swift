//
//  AddToItineraryViewController.swift
//  Final Project
//
//  Created by scholar on 8/4/22.
//

import UIKit

class AddToItineraryViewController: UIViewController {

    var previousVC = ItineraryTableViewController()
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var timeTextField: UITextField!
    
  
    @IBOutlet weak var dateTextField: UITextField!
    
    
    @IBOutlet weak var locationTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToItinerary(_ sender: Any) {
        let newTask = Tasks()
         let time = timeTextField.text
         let date = dateTextField.text
        let location = locationTextField.text
        if let name = nameTextField.text{
            newTask.name = name
            newTask.time = time
            newTask.date = date
            newTask.location = location
            newTask.important = importantSwitch.isOn
        }
        
          
        previousVC.tasks.append(newTask)
        previousVC.tableView.reloadData()

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
