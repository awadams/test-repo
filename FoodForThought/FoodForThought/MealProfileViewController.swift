//
//  MealProfileViewController.swift
//  FoodForThought
//
//  Created by Andy Adams on 6/28/18.
//  Copyright © 2018 Jordan Ehrenholz. All rights reserved.
//

import UIKit

class MealProfileViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mealTableVC = self.childViewControllers.first as? MealTableViewController
        
        // Do any additional setup after loading the view.
      //  scheduledMealTable.loadSavedMeals()
    }
    
    
    // MARK: Outlets
   // @IBOutlet weak var scheduledMealTable: ScheduledMealTableView!
    @IBOutlet weak var mealTable: UIView!
    
    
    // MARK: Actions
    @IBAction func addMeal(_ sender: UIButton) {
        
        guard let newMeal = ScheduledMeal(mealName: "Dinner", startTime: 700, duration: 30) else {
            fatalError("Unable to instantiate new meal")
        }
        
        
    }
        
    //    @IBAction func addMeal(_ sender: UIButton) {
//        
//        
//        //        mealTable.beginUpdates()
//        //        mealTable.insertRows(at: [
//        //            IndexPath(row: scheduledMeals.count - 1, section: 0)
//        //            ], with: .automatic)
//        //        mealTable.endUpdates()
//        
//        guard let newMeal = ScheduledMeal(mealName: "Dinner", startTime: 700, duration: 30) else {
//            fatalError("Unable to instantiate new meal")
//        }
//        
//        
//       // scheduledMealTable.addMeal(meal: newMeal)
//    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Actions
    //    @IBAction func addMeal(_ sender: UIButton) {
    //        let newMeal = UIView(frame: firstNotebook.frame)  // This is making the new notebook using the first ones frame only thing is you would be putting it right over the first one so you need to make a new X position
    //        let newX = firstNotebook.frame.origin.x + 40.0 // I have no idea of how far you want it
    //        newMeal.frame.origin.x = newX
    //        // So you have a new UIView now, you still need to put it in the superView, the superView is already named view for you
    //
    //        view.addSubview(newMeal)
    //    }
    
    
//    private func loadSavedMeals() {
//
//        guard let meal1 = ScheduledMeal(mealName: "Breakfast", startTime: 700, duration: 30) else {
//            fatalError("Unable to instantiate meal1")
//        }
//
//        guard let meal2 = ScheduledMeal(mealName: "Lunch", startTime: 1300, duration: 30) else {
//            fatalError("Unable to instantiate meal1")
//        }
//
//        scheduledMeals += [meal1, meal2]
//    }

}
