//
//  FristViewController.swift
//  BeePartTime
//
//  Created by Leon Cheng on 2018/10/7.
//  Copyright © 2018年 Admin. All rights reserved.
//

import UIKit

class FristViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
          _ = Timer.scheduledTimer(timeInterval: 6.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
    }
    
    
    @objc func timeToMoveOn() {
        self.performSegue(withIdentifier: "goToMainUI", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
