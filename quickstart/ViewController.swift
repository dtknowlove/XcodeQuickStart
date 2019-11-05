//
//  ViewController.swift
//  quickstart
//
//  Created by admin on 2019/10/28.
//  Copyright © 2019 lll. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var IBTitle: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        IBTitle.text="这是代码设置的 Hello world!"
        print(IBTitle!.text)
    }
    
    @IBAction func IBBtnTest(_ sender: UIButton)
    {
        print(sender.titleLabel!.text)
        print("点击后显示")
    }

    @IBAction func IBBtnNext(_ sender: Any)
    {
        let controller=storyboard!.instantiateViewController(withIdentifier: "BtnNext")
        present(controller, animated: true, completion: nil)
    }
    
    @IBOutlet weak var TFUserName: UITextField!
    @IBAction func IBGetUserName(_ sender: Any)
    {
        let userName = TFUserName!.text
        if(userName!.isEmpty)
        {
            print("用户名不能为空！")
            return
        }
        print("当前用户名为\(userName)!")
    }
    
    @IBAction func IBShowImage(_ sender: Any)
    {
        let controller = storyboard!.instantiateViewController(withIdentifier: "Image")
        present(controller, animated: true, completion: nil)
    }
}

