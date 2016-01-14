//
//  ViewController.swift
//  RACStudyProject
//
//  Created by hzdlapple2 on 16/1/13.
//  Copyright © 2016年 hzdlapple2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var bar = KNNavigationBar()
        bar.frame = CGRectMake(0, 0, 320, 60);
        self.view.addSubview(bar)
        bar.titleLabel?.text = "bbb"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

