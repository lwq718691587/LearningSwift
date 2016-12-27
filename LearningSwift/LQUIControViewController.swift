//
//  LQUIControViewController.swift
//  LearningSwift
//
//  Created by 刘伟强 on 2016/11/18.
//  Copyright © 2016年 刘伟强. All rights reserved.
//

import UIKit

class LQUIControViewController: BaseViewController, UITableViewDataSource,UITableViewDelegate{

    var tableview : UITableView!
    var dataArr : Array<String>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataArr = ["","","","","",""]
        self.tableview = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: screenWidth, height: screenHeight))
        self.tableview.backgroundColor = UIColor.white
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.tableview.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "UITableViewCellIdentifier")
        self.tableview.rowHeight = 50
        self.view.addSubview(self.tableview)
        // Do any additional setup after loading the view.
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableview.dequeueReusableCell(withIdentifier: "UITableViewCellIdentifier", for: indexPath)
        cell.textLabel?.text = String(indexPath.row)
        return cell;
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}
