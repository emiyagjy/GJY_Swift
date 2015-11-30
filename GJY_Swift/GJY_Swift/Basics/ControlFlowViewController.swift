//
//  ControlFlowViewController.swift
//  GJY_Swift
//
//  Created by 顾嘉园 on 15/11/30.
//  Copyright © 2015年 com.my.demo. All rights reserved.
//

import UIKit

class ControlFlowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // MARK: - For 循环
        // for- in
        for index  in 1...5{
            print("index is \(index)")
        }
        // 你可以使用下划线（_）替代变量名来忽略对值的访问：
        let base = 3
        let power = 10
        var answer = 1
        
        for _ in 1...power{
            answer *= base
        }
        print("3的10次幂 answer is \(answer)")
        
        // 遍历一个数组
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names {
            print("Hello, \(name)!")
        }
        // 编辑字典
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)s have \(legCount) legs")
        
        }

        for var index = 0; index < 3; ++index {
            print("index is \(index)")
        }
        
        var index: Int
        for index = 0; index < 3; ++index {
            print("index is \(index)")
        }
        // index is 0
        // index is 1
        // index is 2
        print("The loop statements were executed \(index) times")
        // 输出 "The loop statements were executed 3 times
        
        
        // MARK: - Switch
        
        let someCharacter : Character = "~"
        switch someCharacter{
        case "a", "e", "i", "o", "u" :
            print("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter) is a consonant")
        default:
            print("\(someCharacter) is not a vowel or a consonant")
            
        }
        
        // 区间匹配
        // case 分支的模式也可以是一个值的区间。下面的例子展示了如何使用区间匹配来输出任意数字对应的自然语言格式
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        var naturalCount: String
        switch approximateCount{
//        case 0:
//            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
        }
        print("There are \(naturalCount) \(countedThings).")
    
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
