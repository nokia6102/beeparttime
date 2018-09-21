//
//  myTabBarController.swift
//  BeePartTime
//
//  Created by Leon Cheng on 2018/9/21.
//  Copyright © 2018年 Admin. All rights reserved.
//

import UIKit

class myTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if UIImage(named: "bee") != nil {
            self.addCenterButton(withImage: #imageLiteral(resourceName: "bee"), highlightImage: #imageLiteral(resourceName: "bee"))
        }
    }

    
    @objc func handleTouchTabbarCenter(sender : UIButton)
    {
        if let count = self.tabBar.items?.count
        {
            let i = floor(Double(count / 2))
            self.selectedViewController = self.viewControllers?[Int(i)]
            
            
            
        }
    }
    
    func addCenterButton(withImage buttonImage : UIImage, highlightImage: UIImage) {
        
        let paddingBottom : CGFloat = 50.0
        
        let button = UIButton(type: .custom)
        button.autoresizingMask = [.flexibleRightMargin, .flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin]
        button.frame = CGRect(x: 0.0, y: 0.0, width: buttonImage.size.width / 2.0, height: buttonImage.size.height / 2.0)
        button.setBackgroundImage(buttonImage, for: .normal)
        button.setBackgroundImage(highlightImage, for: .highlighted)
        
        //--button title調整
//        button.titleEdgeInsets = UIEdgeInsetsMake(buttonImage.size.height / 2.0 + 10.0,0,0,0)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)

//        button.setTitleColor(.gray, for: .normal)
//        button.setTitle("即時定位", for: UIControlState.normal)
        
//        button.setTitleColor(.blue, for: .highlighted)
//        button.setTitle("即時定位2", for: UIControlState.highlighted)
        //--
        let rectBoundTabbar = self.tabBar.bounds
        let xx = rectBoundTabbar.midX
        let yy = rectBoundTabbar.midY - paddingBottom
        button.center = CGPoint(x: xx, y: yy)
        
        
    
        
        self.tabBar.addSubview(button)
        self.tabBar.bringSubview(toFront: button)
        
        button.addTarget(self, action: #selector(handleTouchTabbarCenter), for: .touchUpInside)
        
        if let count = self.tabBar.items?.count
        {
            let i = floor(Double(count / 2))
            let item = self.tabBar.items![Int(i)]
            item.title = "即時定位"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
