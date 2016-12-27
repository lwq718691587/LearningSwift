//
//  BaseTabbarViewController.swift
//  LearningSwift
//
//  Created by 刘伟强 on 2016/11/14.
//  Copyright © 2016年 刘伟强. All rights reserved.
//

import UIKit

class BaseTabbarViewController: UITabBarController {
    
    var tabbarBackImageView : UIImageView!
    var btnArr : Array<UIButton>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnArr = Array.init()
        self.addViewController()
        self.customTab()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func customTab() {
        self.tabBar.backgroundImage = UIImage.init();
        self.tabBar.shadowImage = UIImage.init();
        
        self.tabbarBackImageView = UIImageView.init(frame: CGRect.init(x: 0, y: -17, width: screenWidth, height: 66))
        self.tabbarBackImageView.image = UIImage.init(named: "bearBack")
        self.tabbarBackImageView.backgroundColor = UIColor.clear
        self.tabbarBackImageView.contentMode = UIViewContentMode.scaleAspectFill
        self.tabbarBackImageView.isUserInteractionEnabled = true
        self.tabBar.addSubview(self.tabbarBackImageView!)
        
        let imageNameArr : Array = ["kouqianghuli","熊","gerenzhongxin"]
        
        let imageNameSelectArr : Array = ["kouqianghuliblue","熊眯","gerenzhongxinblue"]
        
        for i in 0..<imageNameArr.count{
            
            let btn = UIButton.init(frame: CGRect.init(x: screenWidth/3 * CGFloat(i), y: 24, width: screenWidth/3, height: 36))
            
            btn.setImage(UIImage.init(named: imageNameArr[i]), for: UIControlState.normal)
            btn.setImage(UIImage.init(named: imageNameSelectArr[i]), for: UIControlState.selected)
            btn.tag = i
            btn.addTarget(self, action:#selector(touchDown(btn:)), for: UIControlEvents.touchDown)
            self.tabbarBackImageView?.addSubview(btn)
            
            self.btnArr.append(btn)
        }
        self.selectedIndex = 1
        self.btnArr[1].isSelected = true
        
    }
    
    func addViewController() {
        let vc1 = LQArithmeticViewController.init()
        vc1.title = "算法"
        let nvc1 = BaseNavigationViewController.init(rootViewController: vc1)
        
        let vc2 = LQFunctionViewController.init();
        vc2.title = "技术要点"
        let nvc2 = BaseNavigationViewController.init(rootViewController: vc2)
        
        let vc3 = LQUIControViewController.init();
        vc3.title = "控件"
        let nvc3 = BaseNavigationViewController.init(rootViewController: vc3)
        
        self.viewControllers = [nvc1,nvc2,nvc3]
    }
    
    func touchDown(btn : UIButton) {

        for tabBtn:UIButton in self.btnArr  {
            tabBtn.isSelected = false
        }
        btn.isSelected = !btn.isSelected
        self.selectedIndex = btn.tag
    }
    
    override var shouldAutorotate: Bool{
        return (self.selectedViewController?.shouldAutorotate)!
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return (self.selectedViewController?.supportedInterfaceOrientations)!;
    }
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
        return (self.selectedViewController?.preferredInterfaceOrientationForPresentation)!
    }
    
}
