//
//  ViewController.swift
//  playios
//
//  Created by Aditya Pujari on 1/10/16.
//  Copyright © 2016 Aditya Pujari. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    @IBOutlet weak var Fcard: UIImageView!
    @IBOutlet weak var Scard: UIImageView!
    
    
    @IBOutlet weak var DealBtn: UIButton!
    
    
    
     var a:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DrawAction(sender: UIButton) {
       
        
        if(a==0){
        self.Fcard.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        self.Scard.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
            
            a=1
        }
        else{
            self.Fcard.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            self.Scard.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            
            a=0
        }
        
        
    }
    
    @IBAction func SetFunction(sender: AnyObject) {
        self.Fcard.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        self.Scard.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
        
        a=1
    }
    
    @IBAction func ResetFunction(sender: AnyObject) {
        self.Fcard.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        self.Scard.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        a=0
    }
    

}

