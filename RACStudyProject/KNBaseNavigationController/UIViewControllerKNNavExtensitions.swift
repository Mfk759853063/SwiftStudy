//
//  UIViewControllerExtensitions.swift
//  RACStudyProject
//
//  Created by kwep_vbn on 16/1/15.
//  Copyright © 2016年 hzdlapple2. All rights reserved.
//

import Foundation
import UIKit
import ObjectiveC

private var knnavigationbarKey : UInt8 = 0
private var knnavigationbarHiddenKey : UInt8 = 0

extension UIViewController {
    
    var kn_navigationBarHidden : Bool? {
        get {
            return objc_getAssociatedObject(self, &knnavigationbarHiddenKey) as?Bool
        }
        set {
            return objc_setAssociatedObject(self, &knnavigationbarHiddenKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }
    
    var kn_navigationbar : KNNavigationBar? {
        get {
            return objc_getAssociatedObject(self, &knnavigationbarKey) as?KNNavigationBar
        }
        set {
            return objc_setAssociatedObject(self, &knnavigationbarKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    func kn_navigationBarHidden(Hidden hidden:Bool,Animated animated:Bool) -> Void {
        if hidden {
            if animated {
                UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseOut, animations: { () -> Void in
                    self.kn_navigationbar!.y = -64.0
                    self.kn_navigationbar!.alpha = 0.0
                    }, completion: { (finished:Bool) -> Void in
                    self.kn_navigationBarHidden? = true
                });
            } else {
                self.kn_navigationbar!.y = -64.0
                self.kn_navigationbar!.alpha = 0.0
                self.kn_navigationBarHidden? = true
            }
        } else if animated {
            UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseOut, animations: { () -> Void in
                self.kn_navigationbar!.y = 0.0
                self.kn_navigationbar!.alpha = 1
                }, completion: { (finished:Bool) -> Void in
                    self.kn_navigationBarHidden? = false
            });
        } else {
            self.kn_navigationbar!.y = 0.0
            self.kn_navigationbar!.alpha = 1
            self.kn_navigationBarHidden? = false
        }
    }
}
