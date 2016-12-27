//
//  LQFunctionViewController.swift
//  LearningSwift
//
//  Created by 刘伟强 on 2016/11/14.
//  Copyright © 2016年 刘伟强. All rights reserved.
//

import UIKit

class LQFunctionViewController: BaseViewController ,UITableViewDelegate,UITableViewDataSource{

    var tableView : UITableView!
    var dataArr : Array<String>!
    
    static let cellIdentifier : String = "UITableViewCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataArr = ["协议代理","通知"]
        self.view.backgroundColor = UIColor.white
        self.tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: screenWidth, height: screenHeight), style: .plain)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: LQFunctionViewController.cellIdentifier)
        self.view.addSubview(self.tableView)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.dataArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LQFunctionViewController.cellIdentifier, for: indexPath)
        cell.textLabel?.text = self.dataArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = LQProtocolViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
