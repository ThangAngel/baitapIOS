//
//  ViewController.swift
//  denLed
//
//  Created by QuangThang on 8/16/16.
//  Copyright © 2016 QuangThang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
var thanhvien = ["ong", "ba", "me"]
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        let anh = UIImage(named: "green")
        let ball = UIImageView(image: anh)
        ball.center = CGPointMake(100, 100)
        self.view.addSubview(ball)
}
}
