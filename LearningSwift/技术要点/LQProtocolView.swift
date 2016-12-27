//
//  LQProtocolView.swift
//  LearningSwift
//
//  Created by 刘伟强 on 2016/11/18.
//  Copyright © 2016年 刘伟强. All rights reserved.
//

// open > public > interal > fileprivate > private

import UIKit


protocol LQProtocolViewProtocol {
    func buyDelegate(number : Int)
    
}

class LQProtocolView: UIView {

    var googModel : LQProtocolModel!{
        didSet{
            self.goodNameLable.text = self.googModel?.googName
            self.goodPriceLable.text = self.googModel?.goodPrice
        }
    }
    
    private var goodNameLable : UILabel!
    private var goodPriceLable : UILabel!
    
    var delegate : LQProtocolViewProtocol!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        for i in 0..<2{
            let label = UILabel.init(frame: CGRect.init(x: 0, y: CGFloat(i) * 30, width: screenWidth, height: 30))
            label.textColor = UIColor.red
            label.font = UIFont.systemFont(ofSize: 15)
            
            self.addSubview(label)
            if i == 0 {
                self.goodNameLable = label
            }else if i == 1{
                self.goodPriceLable = label
            }
        }
        
        let btn = UIButton.init(frame: CGRect.init(x: (screenWidth - 300)/2, y:70 , width: 300, height: 40))
        btn.setTitle("购买", for: .normal)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(buyFun(number:)), for: .touchDown)
        self.addSubview(btn)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func setModel(protocolModel : LQProtocolModel)  {
        self.goodNameLable.text = protocolModel.googName
        self.goodPriceLable.text = protocolModel.goodPrice
    }
    
    func buyFun(number:Int)  {
        self.delegate.buyDelegate(number: number)
    }

}
