//
//  KNBaseNavigationController.swift
//  RACStudyProject
//
//  Created by hzdlapple2 on 16/1/14.
//  Copyright © 2016年 hzdlapple2. All rights reserved.
//

import UIKit

class KNBaseNavigationController: UINavigationController {

     override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }

     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.hidden = true
        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        self.configureNavigationBarWithController(viewController)
        super.pushViewController(viewController, animated: animated)
    }

    func configureNavigationBarWithController(viewController:UIViewController) {
        guard viewController.kn_navigationbar != nil else {
            let bar : KNNavigationBar = KNNavigationBar(frame:CGRectMake(0,0,CGRectGetWidth(self.view.bounds),64.0))
            viewController.kn_navigationbar = bar
            viewController.view.addSubview(viewController.kn_navigationbar!)
            return
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
