//
//  ImageFilter.swift
//  playios
//
//  Created by Aditya on 24/04/2016.
//  Copyright © 2016 Aditya Pujari. All rights reserved.
//

import UIKit

class ImageFilter:UIViewController {
    
    @IBOutlet var photo: UIImageView!
    
    let context = CIContext(options: nil)
    
    @IBAction func Apply(sender: AnyObject) {
        
        let inputImage = CIImage(image: photo.image!)
        let randomColor = [kCIInputAngleKey: (Double(arc4random_uniform(314))/100)]
        
        let filteredImage = inputImage?.imageByApplyingFilter("CIHueAdjust", withInputParameters: randomColor)
        
        let renderedImage = context.createCGImage(filteredImage!, fromRect: filteredImage!.extent)
        
        photo.image = UIImage(CGImage: renderedImage)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
