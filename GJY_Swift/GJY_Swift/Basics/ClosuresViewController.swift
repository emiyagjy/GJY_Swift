//
//  ClosuresViewController.swift
//  GJY_Swift
//
//  Created by 顾嘉园 on 15/11/30.
//  Copyright © 2015年 com.my.demo. All rights reserved.
//

import UIKit

class ClosuresViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        // 闭包表达式（Closure Expressions）
        // sort 函数（The Sort Function）
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        
//       var revered = names.sort(backwards)
     
        
//        { (parameters) -> returnType in
//                statements
//        }
//         var reversed = names.sort({
//            (s1:String,s2:String) -> Bool in
//            return s1 > s2
//            })

//        
//        根据上下文推断类型（Inferring Type From Context）
//        
//        因为排序闭包函数是作为sort(_:)方法的参数进行传入的，Swift可以推断其参数和返回值的类型。
//        sorted期望第二个参数是类型为(String, String) -> Bool的函数，
//        因此实际上String,String和Bool类型并不需要作为闭包表达式定义中的一部分。
//        因为所有的类型都可以被正确推断，返回箭头 (->) 和围绕在参数周围的括号也可以被省略：
//        reversed = names.sort( { s1, s2 in return s1 > s2 } )
        
        
//        单表达式闭包隐式返回（Implicit Return From Single-Expression Clossures）
//        
//        单行表达式闭包可以通过隐藏return关键字来隐式返回单行表达式的结果，如上版本的例子可以改写为：
//        reversed = names.sort( { s1, s2 in s1 > s2 } )
        
//        参数名称缩写（Shorthand Argument Names）
//        
//        Swift 自动为内联函数提供了参数名称缩写功能，您可以直接通过$0,$1,$2来顺序调用闭包的参数。
//        
//        如果您在闭包表达式中使用参数名称缩写，您可以在闭包参数列表中省略对其的定义，并且对应参数名称缩写的类型会通过函数类型进行推断。 in关键字也同样可以被省略，因为此时闭包表达式完全由闭包函数体构成：
        
//        var reversed = names.sort( { $0 > $1 } )
//        在这个例子中，$0和$1表示闭包中第一个和第二个String类型的参数。
        
        // 运算符函数（Operator Functions）
        var reversed = names.sort(>)
        
        print("revered is \(reversed)")
        
      
            
//        尾随闭包（Trailing Closures）
//          reversed = names.sort{$0 > $1}
        let digitNames = [
            0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
        ]
        let numbers = [16, 58, 510]
        let strings = numbers.map{
            (var number) -> String in
            var output = ""
            while number > 0 {
                output = digitNames[number % 10]! + output
                number /= 10
            }
            return output
        }
        
         print("strings is \(strings)")
        
        
        
        // 捕获值（Capturing Values）
        let incrementByTen = makeIncrementor(forIncrement: 10)
        
        incrementByTen()
        incrementByTen()
       let valueTen = incrementByTen()
        
        print("incrementByTen is \(valueTen)")
        
    }
    
    func backwards(s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    
    // 捕获值（Capturing Values）
//    makeIncrementor返回类型为() -> Int。 这意味着其返回的是一个函数，而不是一个简单类型值。
//    该函数在每次调用时不接受参数只返回一个Int类型的值。 关于函数返回其他函数的内容
    func makeIncrementor(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementor() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementor
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
