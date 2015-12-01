//
//  EnumerationsViewController.swift
//  GJY_Swift
//
//  Created by 顾嘉园 on 15/11/30.
//  Copyright © 2015年 com.my.demo. All rights reserved.
//

import UIKit
enum CompassPoint {
    case North
    case South
    case East
    case West
}

class EnumerationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        var directionToHead = CompassPoint.West
        directionToHead = .North
    
        // 匹配枚举值和Switch语句
        directionToHead = .South
        switch directionToHead{
        case .North:
            print("Lots of planets have a north")
        case .South:
            print("Watch out for penguins")
        case .East:
            print("Where the sun rises")
        case .West:
            print("Where the skies are blue")
        }
        
        // 当不需要匹配每个枚举成员的时候，你可以提供一个默认default分支来涵盖所有未明确被提出的枚举成员：
        
        let somePlanet = CompassPoint.West
        switch somePlanet {
        case .West:
            print("Mostly harmless")
        default:
            print("Not a safe place for humans")
        }
        
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
