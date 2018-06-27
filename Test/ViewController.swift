//
//  ViewController.swift
//  Test
//
//  Created by Andy Adams on 6/27/18.
//  Copyright © 2018 Andy Adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var mealLabel: UILabel!
    
    //MARK: Actions
    @IBAction func defaultTextButton(_ sender: UIButton) {
        mealLabel.text = "Shit"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

