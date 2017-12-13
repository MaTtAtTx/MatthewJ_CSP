//
//  Colorable.swift
//  MatthewJ_CSP
//
//  Created by Matthew Johnsen on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Colorable
{
    var coloredState : Bool {get set}
    func colored() -> Void
    func isColored() -> Bool
}
