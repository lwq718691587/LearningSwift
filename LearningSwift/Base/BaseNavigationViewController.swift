//
//  BaseNavigationViewController.swift
//  LearningSwift
//
//  Created by 刘伟强 on 2016/11/18.
//  Copyright © 2016年 刘伟强. All rights reserved.
//

import UIKit

class BaseNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var shouldAutorotate: Bool{
        return (self.topViewController?.shouldAutorotate)!
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return (self.topViewController?.supportedInterfaceOrientations)!
    }
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
        return (self.topViewController?.preferredInterfaceOrientationForPresentation)!
    }

}
