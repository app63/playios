//
//  ViewController2.swift
//  playios
//
//  Created by Aditya Pujari on 1/13/16.
//  Copyright © 2016 Aditya Pujari. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var SecondViewLBL: UILabel!
    
    @IBOutlet weak var Switch: UISegmentedControl!
   
    @IBOutlet weak var SecondViewBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func SecondButtonFunction(sender: AnyObject) {
        
        SecondViewLBL.text="Success !!!"
        
    }
    
        @IBAction func Switchfunc(sender: AnyObject) {
           if Switch.selectedSegmentIndex == 0 {
                SecondViewLBL.text = "First"
            }else if Switch.selectedSegmentIndex == 1 {
                SecondViewLBL.text = "Second"
            }
    
    
    }
    
    
}
