//
//  RootViewController.swift
//  TSwift
//
//  Created by Hunk on 14-6-4.
//  Copyright (c) 2014年 Hunk. All rights reserved.
//

import UIKit

class RootViewController : UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    var tableView   : UITableView?
    var items       : NSArray?
    
    override func viewDidLoad()
    {
        self.title = "Swift"
        self.items = ["UILabel", "UIButton", "UIImageView", "UISlider", "UIWebView", "UISegmentedControl", "UISwitch", "UITextField", "UIScrollView", "UISearchBar", "UIPageControl", "UIDatePicker", "UIPickerView", "UIProgressView", "UITextView", "UIToolbar", "UIActionSheet", "UIActivityIndicatorView", "UICollectionView"]
        
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.plain)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        //注册cell
        self.tableView!.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view.addSubview(self.tableView!)
    }
    
    // UITableViewDataSource Methods
    //返回几行
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.items!.count
    }
    
    //初始化生成cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.textLabel?.text = self.items?.object(at: indexPath.row) as! String!
        
        return cell
    }
    
    // UITableViewDelegate Methods
    //点击cell执行
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        self.tableView!.deselectRow(at: indexPath, animated: true)
        
        let detailViewController = DetailViewController()
        detailViewController.title = self.items?.object(at: indexPath.row)  as! String!
        self.navigationController!.pushViewController(detailViewController, animated:true)
    }
    
    // 
    override func didReceiveMemoryWarning()
    {}
}
