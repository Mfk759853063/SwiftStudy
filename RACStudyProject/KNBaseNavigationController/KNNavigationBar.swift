//
//  KNNavigationBar.swift
//  RACStudyProject
//
//  Created by hzdlapple2 on 16/1/14.
//  Copyright © 2016年 hzdlapple2. All rights reserved.
//

import UIKit
import SnapKit

class KNNavigationBar: UIView {
    var titleLabel:UILabel?
    var shadowLine:UIView?
    var backGroundView:UIToolbar?
    
    init() {
        super.init(frame:CGRectZero)
        self.setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        // titleLabel
        titleLabel = UILabel()
        self.addSubview(titleLabel!)
        titleLabel!.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(self)
        }
        
        // shadowLine
        
    }
}
