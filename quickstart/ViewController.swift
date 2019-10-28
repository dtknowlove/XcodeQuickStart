//
//  ViewController.swift
//  quickstart
//
//  Created by admin on 2019/10/28.
//  Copyright © 2019 lll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var IBTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        IBTitle.text="这是代码设置的 Hello world!"
        print(IBTitle.text)
    }


}

