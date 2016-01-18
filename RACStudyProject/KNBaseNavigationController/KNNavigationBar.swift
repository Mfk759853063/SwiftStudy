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
    
    var leftItem:KNNavigationItem? {
        didSet {
            leftItem?.removeFromSuperview()
            
            self.addSubview(leftItem!)
            leftItem?.snp_makeConstraints(closure: { (make) -> Void in
                make.centerY.equalTo(self).offset(10)
                make.left.equalTo(self).offset(8)
                make.width.equalTo(CGRectGetWidth(leftItem!.bounds))
                make.height.equalTo(CGRectGetHeight(leftItem!.bounds))
            })
            self.layoutIfNeeded()
        }
    }
    var rightItem:KNNavigationItem? {
        didSet {
            rightItem?.removeFromSuperview()
            self.addSubview(rightItem!)
            rightItem!.snp_makeConstraints { (make) -> Void in
                make.centerY.equalTo(self).offset(10)
                make.trailing.equalTo(self).offset(-8)
                make.width.equalTo(CGRectGetWidth(rightItem!.bounds))
                make.height.equalTo(CGRectGetHeight(rightItem!.bounds))
            }
            self.layoutIfNeeded()
        }
    }
    
    
    override init(frame:CGRect) {
        super.init(frame:frame)
        self.setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        // background
        backGroundView = UIToolbar()
        backGroundView?.barTintColor = KNNavigationBarColor
        self.addSubview(backGroundView!);
        backGroundView?.snp_makeConstraints(closure: { (make) -> Void in
            make.edges.equalTo(self)
        })
        
        // titleLabel
        titleLabel = UILabel()
        titleLabel?.textColor = KNNavigationBarTitleLabelColor
        self.addSubview(titleLabel!)
        titleLabel!.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(self).offset(10)
        }
        
        // shadowLine
        shadowLine = UIView()
        self.addSubview(shadowLine!);
        shadowLine!.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.bottom.equalTo(self)
            make.height.equalTo(0.5)
        }
        
    }
}
