//
//  DetailViewController.swift
//  TSwift
//
//  Created by Hunk on 14-6-4.
//  Copyright (c) 2014年 Hunk. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UICollectionViewDelegate,UICollectionViewDataSource
{
    override func viewDidLoad()
    {
        self.view.backgroundColor = UIColor.white
        
        if self.title == "UILabel"
        {
            // Label
            let label = UILabel(frame: self.view.bounds)
            label.backgroundColor = UIColor.clear
            label.textAlignment = NSTextAlignment.center
            label.font = UIFont.systemFont(ofSize: 36)
            label.text = "Hello, Swift"
            self.view.addSubview(label)
        }
        else if self.title == "UIButton"
        {
            // Button
            let button = UIButton(type: UIButtonType.system) as? UIButton
            
            button!.frame = CGRect(x: 110, y: 120, width: 111, height: 111)
//            button!.frame = CGRect(x: 110.0, y: 120.0, width: 100.0, height: 50.0)
            button!.backgroundColor = UIColor.gray
            button?.setTitleColor(UIColor.red, for: UIControlState())
            button!.setTitleColor(UIColor.white, for: UIControlState.highlighted)
            button?.setTitle("Touch Me", for: UIControlState())
            button?.setTitle("Touch Me", for: UIControlState.highlighted)
            button?.addTarget(self, action: #selector(DetailViewController.buttonAction(_:)), for: UIControlEvents.touchUpInside)
            button!.tag = 100
            self.view.addSubview(button!)
        }
            //imageView
        else if self.title == "UIImageView"
        {
            let image     = UIImage(named: "swift-hero.png")
            let imageView = UIImageView(frame: CGRect(x: (self.view.bounds.width - image!.size.width) / 2.0, y: 120.0, width: image!.size.width, height: image!.size.height))
            imageView.image = image
            self.view.addSubview(imageView)
        }
            //Slider
        else if self.title == "UISlider"
        {
            let slider = UISlider(frame:CGRect(x: 60.0, y: 120.0, width: 200.0, height: 30.0))
            self.view.addSubview(slider)
        }
            //WebView
        else if self.title == "UIWebView"
        {
            let webView = UIWebView(frame:self.view.bounds)
            let url = URL(string: "http://caipiao.m.taobao.com")
            let request = URLRequest(url: url!)
            webView.loadRequest(request)
            self.view.addSubview(webView)
        }
            //segment
        else if self.title == "UISegmentedControl"
        {
            let segmentControl = UISegmentedControl(items:["A", "B", "C", "D"])
            segmentControl.frame = CGRect(x: 110.0, y: 120.0, width: 100.0, height: 30.0)
            self.view.addSubview(segmentControl)
        }
            //Switch
        else if self.title == "UISwitch"
        {
            let switchControl = UISwitch(frame:CGRect(x: 130.0, y: 120.0, width: 100.0, height: 30.0))
            switchControl.isOn = true
            self.view.addSubview(switchControl)
        }
            //textField
        else if self.title == "UITextField"
        {
            let textField = UITextField(frame:CGRect(x: 60.0, y: 120.0, width: 200.0, height: 30.0))
            textField.backgroundColor = UIColor.lightGray
            textField.placeholder = "input text"
            self.view.addSubview(textField)
        }
            //ScrollView
        else if self.title == "UIScrollView"
        {
            let scrollView = UIScrollView(frame:CGRect(x: 60.0, y: 120.0, width: 200.0, height: 200.0))
            scrollView.isPagingEnabled = true
            scrollView.showsVerticalScrollIndicator = false
            self.view.addSubview(scrollView)
            
//            var fxX: CGFloat
//            fxX = 1.0
//            for(i in 0 ..< 3 += 1)
//            {
//                let view = UIView(frame:CGRect(x: fX, y: 0.0, width: 200.0, height: 200.0))
//                fX += 200.0
//                view.backgroundColor = UIColor.red
//                scrollView.addSubview(view)
//            }
            scrollView.contentSize = CGSize(width: 3 * 200.0, height: 200.0)
            self.view.addSubview(scrollView)
        }
            //SearchBar
        else if self.title == "UISearchBar"
        {
            let searchBar = UISearchBar(frame:CGRect(x: 10.0, y: 120.0, width: 300.0, height: 30.0))
            searchBar.showsCancelButton = true
            searchBar.searchBarStyle = UISearchBarStyle.minimal // Default, Prominent, Minimal

            self.view.addSubview(searchBar)
        }
            //pageControl
        else if self.title == "UIPageControl"
        {
            // PageControl
            let pageControl = UIPageControl(frame:CGRect(x: 60.0, y: 120.0, width: 200.0, height: 200.0))
            pageControl.numberOfPages = 5
            pageControl.currentPageIndicatorTintColor = UIColor.black
            pageControl.pageIndicatorTintColor = UIColor.red
            self.view.addSubview(pageControl)
        }
            //dataPicker
        else if self.title == "UIDatePicker"
        {
            let datePicker = UIDatePicker(frame:CGRect(x: 0.0, y: 120.0, width: 200.0, height: 200.0))
            self.view.addSubview(datePicker)
        }
            //PickerView
        else if self.title == "UIPickerView"
        {
            let pickerView = UIPickerView(frame:CGRect(x: 10.0, y: 120.0, width: 300.0, height: 200.0))
//            pickerView.delegate = self
//            pickerView.dataSource = self
            self.view.addSubview(pickerView)
        }
            //ProgressView
        else if self.title == "UIProgressView"
        {
            let progressView = UIProgressView(progressViewStyle:UIProgressViewStyle.default)
            progressView.frame = CGRect(x: 10.0, y: 120.0, width: 300.0, height: 30.0)
            progressView.setProgress(0.8, animated: true)
            self.view.addSubview(progressView)
        }
            //TextView
        else if self.title == "UITextView"
        {
            let textView = UITextView(frame:CGRect(x: 10.0, y: 120.0, width: 300.0, height: 200.0))
            textView.backgroundColor = UIColor.lightGray
            textView.isEditable = false
            textView.font = UIFont.systemFont(ofSize: 20)
            textView.text = "Swift is an innovative new programming language for Cocoa and Cocoa Touch. Writing code is interactive and fun, the syntax is concise yet expressive, and apps run lightning-fast. Swift is ready for your next iOS and OS X project — or for addition into your current app — because Swift code works side-by-side with Objective-C."
            self.view.addSubview(textView)
        }
        else if self.title == "UIToolbar"
        {
            let toolBar = UIToolbar(frame:CGRect(x: 60.0, y: 120.0, width: 200.0, height: 30.0))

            let flexibleSpace = UIBarButtonItem(barButtonSystemItem:UIBarButtonSystemItem.flexibleSpace, target:nil, action:nil)
            let barBtnItemA = UIBarButtonItem(title: "A", style:UIBarButtonItemStyle.plain, target:nil, action:nil)
            let barBtnItemB = UIBarButtonItem(title: "B", style:UIBarButtonItemStyle.plain, target:nil, action:nil)
            let barBtnItemC = UIBarButtonItem(title: "C", style:UIBarButtonItemStyle.plain, target:nil, action:nil)
            let barBtnItemD = UIBarButtonItem(title: "D", style:UIBarButtonItemStyle.plain, target:nil, action:nil)
            
            toolBar.items = [flexibleSpace, barBtnItemA, flexibleSpace, barBtnItemB, flexibleSpace, barBtnItemC, flexibleSpace, barBtnItemD, flexibleSpace]
            self.view.addSubview(toolBar)
        }
        else if self.title == "UIActionSheet"
        {
            // Button
//            let button = UIButton(type: UIButtonType.system) as? UIButton
            
            let button = UIButton(type: UIButtonType.system) as?UIButton
            
            button!.frame = CGRect(x: 60.0, y: 120.0, width: 200.0, height: 50.0)
            button!.backgroundColor = UIColor.gray
            button?.setTitleColor(UIColor.red, for: UIControlState())
            button!.setTitleColor(UIColor.white, for: UIControlState.highlighted)
            button?.setTitle("Show ActionSheet", for: UIControlState())
            button?.setTitle("Show ActionSheet", for: UIControlState.highlighted)
            button?.addTarget(self, action: #selector(DetailViewController.showActionSheet), for: UIControlEvents.touchUpInside)
            button!.tag = 101
            self.view.addSubview(button!)
        }
        else if self.title == "UIActivityIndicatorView"
        {
            let activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle:UIActivityIndicatorViewStyle.gray)
            activityIndicatorView.frame = CGRect(x: 140.0, y: 120.0, width: 40.0, height: 40.0)
            activityIndicatorView.startAnimating()
            self.view.addSubview(activityIndicatorView)
        }
        else if self.title == "UICollectionView"
        {
            // FlowLayout
            let collectionViewFlowLayout = UICollectionViewFlowLayout();
//            collectionViewFlowLayout.itemSize = CGSizeMake(<#width: CGFloat#>, <#height: CGFloat#>);
            collectionViewFlowLayout.scrollDirection = UICollectionViewScrollDirection.vertical;
            
            // Collection view
            let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: collectionViewFlowLayout);
            collectionView.backgroundColor = UIColor.white;
            collectionView.delegate = self
            collectionView.dataSource = self
            self.view.addSubview(collectionView)
            
            collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "ReuseIdentifier")
        }
        else
        {}
    }
    
    override func viewWillAppear(_ animated: Bool) {}
    override func viewDidAppear(_ animated: Bool) {}
    override func viewWillDisappear(_ animated: Bool) {}
    override func viewDidDisappear(_ animated: Bool) {}
    
    // Button Action
    func buttonAction(_ sender: UIButton)
    {
        // Swfit -> ObjC
        let mathSum = MathSum()
        let sum = mathSum.sum(11, number2: 22)
        
        let alert = UIAlertController(title: "Title", message: String(format: "Result = %i", sum), preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        /*
        var alertView = UIAlertView()
        alertView.title = "Title"
        alertView.message = "Message"
        alertView.addButtonWithTitle("OK")
        alertView.show()
        */

    }
    
    // UIPickerViewDataSource Methods
    // returns the number of 'columns' to display.
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 3
    }
    
    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return 10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return String(format:"%i", row)
    }
    
    // UICollectionViewDataSource methods
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReuseIdentifier", for: indexPath) as! CollectionViewCell;
        
        cell.imageView?.image = UIImage(named: String(format:"%ld.png", indexPath.row));
        cell.textLabel?.text = String(format: "(%d, %d)", indexPath.section, indexPath.row);
        
        return cell;
    }
    
    // UICollectionViewDelegateFlowLayout methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100.0, height: 120.0);
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(5.0, 5.0, 5.0, 5.0);
    }
    
    // UICollectionViewDelegate method
    func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // Button Handler
    // showActionSheet
    func showActionSheet()
    {
        let alertController = UIAlertController(title: "ActionSheet", message: "Message", preferredStyle: UIAlertControllerStyle.actionSheet)
        alertController.addAction(UIAlertAction(title: "Go Back", style: UIAlertActionStyle.destructive, handler: nil))
        self.present(alertController, animated: true, completion:nil)
    }
    
    // didReceiveMemoryWarning
    override func didReceiveMemoryWarning()
    {}
}
