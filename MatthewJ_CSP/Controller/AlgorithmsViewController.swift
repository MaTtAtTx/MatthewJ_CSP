//
//  AlgorithmsViewController.swift
//  MatthewJ_CSP
//
//  Created by Johnsen, Matthew on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController
{
    // MARK: Data members
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = [] //This is created an array in swift, you just use the square brackets around type, and then = []
        
        // TODO: Define algorithm and all steps
        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First, you have to creat the new Java project in Eclipse (file > new > Java project) \n"
        let stepTwo :String = "Second, open Github Desktop and create a repository (make sure it is the exact name of your project and selects your workspace folder) \n"
        let stepThree :String = "Third, undo the intial commit and add bin/, *.class, and .DS_Store to the repository ignored files \n"
        let stepFour :String = "Fourth, commit the changes you have made now with a proper description \n"
        let stepFive :String = "Fifth, publish your repository to GitHub and make sure having your code as private box isn't checked \n"
        let stepSix :String = "Sixth, create any packages you need in your project (controller package with controller and runner classes, etc.) \n"
        let stepSeven :String = "Seventh, create the public static void main method in the controller class and the public start method in the controller class so your project can run \n"
        let stepEight :String = "Eighth, save all your changes in Eclipse and commit again. From here, you can now commit whenever you want."
        
        //TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps //There are no parens or type for the for loop in swift
        {
            let bullet :String = "👾"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
