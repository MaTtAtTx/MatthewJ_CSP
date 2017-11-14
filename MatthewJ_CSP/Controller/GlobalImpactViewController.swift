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
    private var textCounter : Int = 0
    
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var changeInformation: UIButton!
    @IBOutlet weak var informationLabel: UILabel!
    
    @IBAction func changePicture() -> Void
    {
        switchImage()
        switchText()
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
            imageFrame.image = UIImage(named: "aidsRibbons2")
        }
        
        imageCounter += 1
    }
    
    private func switchText() -> Void
    {
        if (textCounter > 2)
        {
            textCounter = 0
        }
        
        if (textCounter == 0)
        {
            informationLabel.text = "AIDS, or Aquired Immunodeficiency Syndrome, is a disease that attacks the victim's immune system. In 2015, it was reported that 36.7 million people had AIDS, and that year, around 1 million people died from AIDS. Although there is access to treatment for around half of the people with the disease, and the number of people infected decresaes each year, it is still a problem that needs to be addressed."
        }
        else if (textCounter == 1)
        {
            informationLabel.text = "Our app will allow doctors to prioritize the patients based off of the severity of their condition. The app will allow the doctors to learn more information about their patients by collecting health information with something similar to a FitBit. This health information will allow doctors to determine how bad their condition is, which will allow local organizations to more effectively distribute regional antiretroviral therapy and other types of treatments."
        }
        else
        {
            informationLabel.text = "Although I don't have any specefic connections with AIDS like family members dealing with it, I understand now how much of a problem it is. After seeing how many people are dealing with it and learning how many deaths there are from it, it showed me that this is a greater problem than I initially thought, which makes me want to help with the problem more."
        }
        
        textCounter += 1
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        switchImage()
        switchText()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
