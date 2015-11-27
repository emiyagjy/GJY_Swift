//
//  CollectionTypesViewController.swift
//  GJY_Swift
//
//  Created by 顾嘉园 on 15/11/27.
//  Copyright © 2015年 com.my.demo. All rights reserved.
//

import UIKit

class CollectionTypesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        // 数组(Arrays)
        // 创建一个空数组
        var someInts = [Int]()
        print("someInts is of type [Int] with \(someInts.count) items。")
        
        someInts.append(3)
        // someInts 现在包含一个Int值
        someInts = []
        // someInts 现在是空数组，但是仍然是[Int]类型的。

        // 创建一个带有默认值的数组
        
//        Swift 中的Array类型还提供一个可以创建特定大小并且所有数据都被默认的构造方法。
//        我们可以把准备加入新数组的数据项数量（count）和适当类型的初始值（repeatedValue）传入数组构造函数：
        var threeDoubles = [Double](count: 3, repeatedValue:0.0)
        print("threeDoubles is  \(threeDoubles)。")
        
        // 过两个数组相加创建一个数组
        var anotherThreeDoubles  = [Double](count: 3, repeatedValue: 2.5)
        var sixThreeDouble  = threeDoubles + anotherThreeDoubles
        print("sixThreeDouble is  \(sixThreeDouble)。")
        
        
        // 用字面量构造数组
        var shoppingList :[String] = ["Eggs","Mike"]
        // shoppingList 已经被构造并且拥有两个初始项。
  
        shoppingList.append("Flour")
        // shoppingList 现在有3个数据项，有人在摊煎饼
        
       // 除此之外，使用加法赋值运算符（+=）也可以直接在数组后面添加一个或多个拥有相同类型的数据项
        
        shoppingList += ["Baking Powder"]
        // shoppingList 现在有四项了
        shoppingList += ["Chocolate Spread","Cheese","Butter"]
        // shoppingList 现在有七项了
        
        print("The shopping list contains \(shoppingList.count) items.")
        
        // 可以直接使用下标语法来获取数组中的数据项，把我们需要的数据项的索引值放在直接放在数组名称的方括号中：
        var firstItem = shoppingList[0]
        // 第一项是 "Eggs"
        print("firstItem is \(firstItem)")
        
//        注意第一项在数组中的索引值是0而不是1。 Swift 中的数组索引总是从零开始。
//        
//        我们也可以用下标来改变某个已有索引值对应的数据值：
         shoppingList[0] = "new Eggs"
        var firstItem1 = shoppingList[0]
        print("firstItem1 is \(firstItem1)")
        
//        还可以利用下标来一次改变一系列数据值，即使新数据和原有数据的数量是不一样的。下面的例子把"Chocolate Spread"，"Cheese"，和"Butter"替换为"Bananas"和 "Apples"：
        shoppingList[4...6] = ["Bananas", "Apples"]
        shoppingList.insert("Maple Syrup", atIndex: 0)
        
        // 移除
        let removeItem = shoppingList.removeAtIndex(0)
        // 移除最后项目
        shoppingList.removeLast()
        
        print("shoppingList is \(shoppingList)")
        
        
        for(index,value) in shoppingList.enumerate(){
            print("Item \(String(index + 1)):\(value)")
        }
 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
