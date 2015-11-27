//
//  BasicOperatorViewController.swift
//  GJY_Swift
//
//  Created by 顾嘉园 on 15/11/27.
//  Copyright © 2015年 com.my.demo. All rights reserved.
//

import UIKit

class BasicOperatorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self._setupOperator();
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Private Methods
    // MARK: 运算符
    func _setupOperator(){
        // 赋值运算符
        let b = 10;
        var a = 5;
        a = b;
        print("a = \(a)");
        
        
        // 算术运算符
        //        加法（+）
        //        减法（-）
        //        乘法（*）
        //        除法（/）
        
        let c = a + b;
        let d = a - b;
        let e = a * b;
        let f = b / a;
        print("c = \(c),d = \(d),e = \(e),f = \(f)");
        
        // 浮点数求余计算
        let bbb = 8 % 2.5;
        print("浮点数求余计算 = \(bbb)");
        
        // 空合运算符(Nil Coalescing Operator)
        let defaultColorName = "red";
        var userDefinedColorName : String?; //默认为nil
        var colorNameToUser = userDefinedColorName ?? defaultColorName;
        print("colorNameToUser = \(colorNameToUser)");
        // userDefinedColorName 的值为空，所以 colorNameToUse 的值为 "red"
        
        userDefinedColorName = "green";
        colorNameToUser = userDefinedColorName ?? defaultColorName;
        print("colorNameToUser2 = \(colorNameToUser)");
        
        // 区间运算符
        // 闭区间运算符
        for index in 1...5 {
            print("\(index) * 5 = \(index * 5)")
        }
        
        // 半开区间运算符
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count
        for i in 0..<count {
            print("第 \(i + 1) 个人叫 \(names[i])")
        }
        
        
        // 逻辑或，逻辑与
        
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
