//
//  ViewController.swift
//  khoi tao mang111
//
//  Created by QuangThang on 8/11/16.
//  Copyright © 2016 QuangThang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var users = ["thang":"123", "coi":"321", "to":"coi"]
    
    
    override func viewDidLoad() {
        //users["thang"] = "1234"
        
        super.viewDidLoad()
      
    

}
    @IBAction func btn_List(sender: AnyObject) {
        let khoa = users.keys
        for key in khoa {
            print(key)
        }
        let values = users.values
        for value in values{
            print(value)
        }

        
    }
    @IBOutlet weak var textfiled_password: UITextField!
    @IBOutlet weak var lbl_list: UILabel!
    
    
    
    // khai bao name = ["key":"value", "key":"value"]
    
    @IBAction func btn_change(sender: AnyObject) {
        users["thang"] = "12345"
        users["coi"] = "567"
    }
    
    @IBOutlet weak var lbl_hienthi: UILabel!
    
    
    @IBOutlet weak var lbl_dangnhap: UIButton!
    @IBOutlet weak var textfield_2: UITextField!
    
    @IBAction func btn_delete(sender: AnyObject) {
        users.removeValueForKey("thang")
    }
    @IBAction func action_dangki(sender: AnyObject) {
//        lbl_dangnhap.setTitle("Đăng Kí", forState: .Normal)
        users["newkeys"] = "newvalues"
        for (newkeys,newvalues) in users {
            print(newkeys,newvalues)
        }
        users["thangto"] = "222"
        
    }
    @IBAction func action_bn(sender: AnyObject) {
    
       if let password = users[textfiled_password.text!]
     //if let password = users[textfiled]
        {     //neu pasword = text2 -> dang nhap thanh cong
            if password == textfield_2.text
            {
                
                lbl_hienthi.text = String("Đăng nhập thành công")
            }
          //nguoc lại mk k đúng
            else{
                print("Mật khẩu không đúng")
                lbl_hienthi.text = String("Mật khẩu không đúng")
            }
        }
        // ngược lại tài khoảng k tồn tại
        else
        {
            print("tài khoản không tồn tại")
            lbl_hienthi.text = String("Tài khoản không tồn tại")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

