//
//  KNNavigationItem.swift
//  RACStudyProject
//
//  Created by kwep_vbn on 16/1/14.
//  Copyright © 2016年 hzdlapple2. All rights reserved.
//

import UIKit

typealias KNNavigationItemHandler = (sender:AnyObject!) -> Void

class KNNavigationItem: UIView {
    var button:UIButton?
    var actionHander:KNNavigationItemHandler?
    
    init(itemSize Size:CGSize,itemTitle Title:String,handle CallBack:KNNavigationItemHandler) {
        super.init(frame: CGRectZero)
        self.setupUI(Size, title: Title, image: nil, handle: CallBack)
    }
    
    init(itemSize Size:CGSize,itemTitle Title:String,itemImage Image:UIImage, handle CallBack:KNNavigationItemHandler) {
        super.init(frame: CGRectZero)
        self.setupUI(Size, title: Title, image: Image, handle: CallBack)
    }
    
    
    func setupUI(size:CGSize,title:String,image:UIImage?,handle:KNNavigationItemHandler) {
        var frame : CGRect = self.frame
        frame.size = size
        self.frame = frame
        
        // button
        button = UIButton(type: .Custom)
        button?.frame = self.
        button?.setTitle(title, forState: .Normal)
        button?.setTitleColor(KNNavigationBarItemTitleColor, forState: .Normal)
        button?.titleLabel?.font = KNNavigationBarItemTitleFont
        self.addSubview(button!)
        if let _ = image {
            button?.setImage(image, forState: .Normal)
        }
        self.actionHander = handle
        button?.addTarget(self, action: "buttonTaped:", forControlEvents: .TouchUpInside)
        
    }
    
    func buttonTaped(sender:UIButton) {
        self.actionHander?(sender: sender)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
