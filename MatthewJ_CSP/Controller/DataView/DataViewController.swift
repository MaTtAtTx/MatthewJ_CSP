//
//  DataViewController.swift
//  MatthewJ_CSP
//
//  Created by Johnsen, Matthew on 1/5/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class DataViewController: UITableViewController
{
    lazy var bucketList : [BucketItem] =
    {
        return loadBucketListFromFile()
    }()
    
    private func loadBucketListFromFile() -> [BucketItem]
    {
        var items = [BucketItem]()
        if let filePath = Bundle.main.url(forResource: "bucket", withExtension: "csv")
        {
            do
            {
                let input = try String(contentsOf: filePath)
                let bucketLines = input.components(separatedBy: "\n")
                for line in bucketLines
                {
                    let item = line.components(separatedBy: ",")
                    items.append(BucketItem(contents: item[0],author: item[1]))
                }
            }
            catch
            {
                print("File Load Error")
            }
        }
        
        return items
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: TableView code

    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return bucketList.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "dataIdentifier", for: indexPath) as! BucketItemCell
        
        currentCell.bucketItem = bucketList[indexPath.row]
        //currentCell.bucketItemSignature.text = currentCell.bucketItem.itemAuthor
        
        return currentCell
    }
}
