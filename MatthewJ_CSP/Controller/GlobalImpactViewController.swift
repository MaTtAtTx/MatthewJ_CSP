//
//  GlobalImpactViewController.swift
//  MatthewJ_CSP
//
//  Created by Johnsen, Matthew on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

class GlobalImpactViewController: UIViewController
{
    private var imageCounter : Int = 0
    
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var changeInformation: UIButton!
    
    @IBAction func changePicture() -> Void
    {
        switchImage()
    }
    
    private func switchImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            imageFrame.image = UIImage(named: "aidsRibbon")
        }
        else if (imageCounter == 1)
        {
            imageFrame.image = UIImage(named: "appDesign")
        }
        else
        {
            imageFrame.image = UIImage(named: "")
        }
        
        imageCounter += 1
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
