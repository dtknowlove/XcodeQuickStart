//
//  ListController.swift
//  quickstart
//
//  Created by admin on 2019/11/6.
//  Copyright © 2019 lll. All rights reserved.
//

import UIKit

class ListController: UIViewController
{
    var mDataArray:[String] = []
    @IBOutlet weak var ITTable: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        for index in 1...100
        {
            mDataArray.append("充值￥1,当前余额:￥\(index)!")
        }
        ITTable.reloadData()
    }

    @IBAction func IBBackEvent(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
}

extension ListController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return mDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        cell.textLabel?.text=mDataArray[indexPath.row]
        cell.detailTextLabel?.text="充值了￥1"
        print(indexPath.row,indexPath.count,indexPath.debugDescription)
        return cell
    }
    
    
}
