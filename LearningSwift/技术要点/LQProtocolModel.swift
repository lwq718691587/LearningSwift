//
//  LQProtocolModel.swift
//  LearningSwift
//
//  Created by 刘伟强 on 2016/11/18.
//  Copyright © 2016年 刘伟强. All rights reserved.
//

import UIKit

class LQProtocolModel: NSObject {

    var googName : String!
    var goodPrice : String!
    
    init(paramDic : Dictionary<String, String>) {
        self.goodPrice = paramDic["price"]
        self.googName = paramDic["name"]
    }

    
}
