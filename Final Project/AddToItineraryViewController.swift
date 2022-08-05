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
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

           // we are creating a new ToDoCD object here, naming it toDo
            let newTask = TaskCD(entity:TaskCD.entity(), insertInto: context)
           
         
       
        if let name = nameTextField.text{
            newTask.name = name
        }
        if let time = timeTextField.text {
            newTask.time = time
        }
        if let date = dateTextField.text {
            newTask.date = date
        }
        if  let location = locationTextField.text {
            newTask.location = location
        }
           
        newTask.important = importantSwitch.isOn
        
          
    //    previousVC.tasks.append(newTask)
    //    previousVC.tableView.reloadData()
            
            try? context.save()
            
        navigationController?.popViewController(animated: true)

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
