//
//  ViewController.swift
//  RACStudyProject
//
//  Created by hzdlapple2 on 16/1/13.
//  Copyright © 2016年 hzdlapple2. All rights reserved.
//

import UIKit

class ViewController: KNBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton()
        button.backgroundColor = UIColor.redColor()
        self.view.addSubview(button)
        button.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(self.view)
        }
        button.setTitle("TapMe", forState: .Normal)
        button.addTarget(self, action: "push:", forControlEvents: .TouchUpInside)
        self.kn_navigationbar?.titleLabel?.text = "Hello world"
//        let rightItem = KNNavigationItem(itemSize: CGSizeMake(44, 30), itemTitle: "right") { (sender:UIButton) -> Void in
//            print("sender is \(sender)")
//        })
        let rightItem = KNNavigationItem(itemSize: CGSizeMake(44, 30), itemTitle: "right", handle:{ (sender) -> Void in
            print("sender is \(sender)")
        })
        self.kn_navigationbar?.rightItem = rightItem
    }
    
    func push(sender:UIButton) {
        let vc2 = KNBViewController()
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    override func needBackItem() -> Bool {
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

