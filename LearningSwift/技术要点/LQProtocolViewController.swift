//
//  LQProtocolViewController.swift
//  LearningSwift
//
//  Created by 刘伟强 on 2016/11/18.
//  Copyright © 2016年 刘伟强. All rights reserved.
//

import UIKit

class LQProtocolViewController: BaseViewController ,LQProtocolViewProtocol{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dic : Dictionary<String,String> = ["name":"苹果","price":"12元/金"]
        
        
        let model : LQProtocolModel = LQProtocolModel.init(paramDic: dic)
        
        self.view.backgroundColor = UIColor.white
        let protocolView = LQProtocolView.init(frame: CGRect.init(x: 0, y: 64, width: screenWidth, height: 120))
        protocolView.backgroundColor = UIColor.yellow
        
        protocolView.googModel = model
        protocolView.delegate = self
        self.view.addSubview(protocolView)
        
        
        

        // Do any additional setup after loading the view.
    }
    
    func buyDelegate(number: Int) {
        print("我买苹果了")
    }
    
}
