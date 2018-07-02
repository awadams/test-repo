//
//  MealTableViewController.swift
//  FoodForThought
//
//  Created by Andy Adams on 2018-06-30.
//  Copyright © 2018 Jordan Ehrenholz. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {

    
    // MARK: - Table view data source
    var scheduledMeals = [ScheduledMeal]()
    
    // MARK: Outlets
  
    // MARK: Actions
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.loadSavedMeals()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    func loadSavedMeals() {
        guard let meal1 = ScheduledMeal(mealName: "Breakfast", startTime: 700, duration: 30) else {
            fatalError("Unable to instantiate meal1")
        }
        guard let meal2 = ScheduledMeal(mealName: "Lunch", startTime: 1300, duration: 30) else {
            fatalError("Unable to instantiate meal1")
        }
        scheduledMeals += [meal1, meal2]
        print("loadSavedMeals called")
        print(scheduledMeals)
    }
    
    func addMeal(meal: ScheduledMeal) {
        scheduledMeals.append(meal)
    }
    
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if scheduledMeals.count == 0 {
            return 1
        } else {
            return scheduledMeals.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         // Table view cells are reused and should be dequeued using a cell identifier.
         let cellIdentifier = "mealScheduleTableViewCell"
         guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ScheduledMealTableViewCell else {
         fatalError("The dequeued cell is not an instance of MealTableViewCell.")
         }
        
         if scheduledMeals.count == 0 {
            cell.scheduledMealDisplay.displayNoMealsScheduled()
         } else {
            let cellMeal = scheduledMeals[indexPath.row]
            cell.scheduledMealDisplay.setMealProperties(meal: cellMeal)
         }
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
