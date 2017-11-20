//
//  Drawing.swift
//  MatthewJ_CSP
//
//  Created by Johnsen, Matthew on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class Drawing : Colorable
{
    //MARK: Colorable data member
    private var coloredState: Bool
    
    public init()
    {
        self.coloredState = false
    }
    
    //MARK:- Colorable methods
    func colored() -> Void
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
    }
}
