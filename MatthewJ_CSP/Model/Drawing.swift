//
//  Drawing.swift
//  MatthewJ_CSP
//
//  Created by Matthew Johnsen on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class Drawing : Colorable
{
    //MARK: Colorable data member
    public var coloredState: Bool
    
    public init()
    {
        self.coloredState = false
    }
    
    //MARK:- Colorable methods
    public func colored() -> Void
    {
        print("I am colored")
        coloredState = true
    }
    
    public func isColored() -> Bool
    {
        if(coloredState)
        {
            print("Colored")
        }
        else
        {
            print("Blank")
        }
        
        return coloredState
    }
}
