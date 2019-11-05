//
//  BtnNextController.swift
//  quickstart
//
//  Created by admin on 2019/11/5.
//  Copyright © 2019 lll. All rights reserved.
//

import UIKit

class BtnNextController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func IBBack2Main(_ sender: Any)
    {
        dismiss(animated: true) {
            print("已关闭")
        }
    }
}
