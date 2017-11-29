//
//  InternetMasterViewController.swift
//  MatthewJ_CSP
//
//  Created by Johnsen, Matthew on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide",
        ]
    }()
    
    private var detailViewController viewDidLoad : InternetDetailViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Uncomment the followiing line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
    }
    
    // MARK: - Table view data source
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning INcomplete implementation, return the number of sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
}
