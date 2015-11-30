//
//  FunctionViewController.swift
//  GJY_Swift
//
//  Created by 顾嘉园 on 15/11/30.
//  Copyright © 2015年 com.my.demo. All rights reserved.
//

import UIKit

class FunctionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 函数的定义与调用（Defining and Calling Functions）
        print(self.sayHello("小看"))
        // 多重输入参数（Multiple Input Parameters）
        print("self.halfOpenRangeLength(1, end: 10) = \(self.halfOpenRangeLength(1, end: 10))")

        // 无参函数（Functions Without Parameters）
        print(self.sayHello())
        // 多参量函数 (Functions With Multiple Parameters)
//        print(self.sayHello("小看2016", alreadyGreeted: true))
        print(self.sayHello("小看2016", alreadyGreeted: false))
        
        // 多重返回值函数（Functions with Multiple Return Values）
        let array = [8, -6, 2, 109, 3, 71]
        if let bounds = minMax(array){
            print("min is \(bounds.min) and max is \(bounds.max)")
        }
        
        // 指定外部参数名(Specifying External Parameter Names
        //  这个版本的sayHello(_:)函数,得到了两个人的名字,会同时返回对他俩的问候:
         print(self.sayHello(to: "小看", and: "小天"))
    
        // 默认参数值（Default Parameter Values）
        someFunction(6) // parameterWithDefault is 6
        someFunction() // parameterWithDefault is 12
        print(self.someFunction(6))
        print(self.someFunction())
        
        // 可变参数（Variadic Parameters）
        print(self.arithmeticMean(1,2,3,4,5))
        print(self.arithmeticMean(3,8.25,18.75))
        
        // 常量参数和变量参数（Constant and Variable Parameters）
        print(self.alignRight("hello", totalLength: 10, pad: "-"))
        
        // 输入输出参数（In-Out Parameters）
        var someInt = 107
        var antherInt = 220
        self.switchTwoInts(&someInt, b: &antherInt)
        print("someInt = \(someInt), antherInt = \(antherInt)")
        
        // 函数类型（Function Types）
        // 使用函数类型（Using Function Types）
        // 在 Swift 中，使用函数类型就像使用其他类型一样。例如，
        // 你可以定义一个类型为函数的常量或变量，并将函数赋值给它：
//        var mathFunction :(Int,Int) -> Int = addTwoInts
        var mathFunction = addTwoInts
       print("Result: \(mathFunction(2, 3))")
        mathFunction = multiplyTwoInts
        print("Result: \(mathFunction(2, 3))")
        // prints "Result: 6"
        
        /**
        函数类型作为参数类型（Function Types as Parameter Types）
        */
        self.printMathResult(addTwoInts, 3, 10)
        
//      函数类型作为返回类型（Function Type as Return Types）
        // 你现在可以用 chooseStepFunction(_:) 来获得一个函数，不管是那个方向：
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(currentValue > 0)
        print("Counting to zero:")
        // Counting to zero:
        while currentValue != 0 { // = 0 退出循环
            print("\(currentValue)... ")
            currentValue = moveNearerToZero(currentValue,0)
        }
        print("zero!")
        
        
        /**
        嵌套函数（Nested Functions）
        */
        var currentValue2 = -4
        let moveNearerToZero2 = chooseStepFunctuon2(currentValue > 0) // 返回一个函数
        // moveNearerToZero now refers to the nested stepForward() function
        while currentValue2 != 0 {
            print("\(currentValue2)... ")
            currentValue2 = moveNearerToZero2(currentValue2) // 调用返回的函数
        }
        print("zero!")
 
        
        
 
    }
    //  函数的定义与调用（Defining and Calling Functions）
    func sayHello(personName : String) -> String{
        let greeting = "hello " + personName + "!"
        return greeting

    }
    func sayHelloAgain(personName: String) -> String {
        return "Hello again, " + personName + "!"
    }
    
    // 多重输入参数（Multiple Input Parameters）
    func halfOpenRangeLength(start:Int,end:Int) -> Int{
        return end - start;
    }
    // 无参函数（Functions Without Parameters）
    func sayHello() -> String{
        return "hello 小看2015"
    }
    
    // 多参量函数 (Functions With Multiple Parameters)
    func sayHello(personName :String,alreadyGreeted: Bool) -> String {
        if alreadyGreeted{
            return self.sayHelloAgain(personName)
        }else{
            return self.sayHello(personName)
        }
    }
    
    // 多重返回值函数（Functions with Multiple Return Values）
//    你可以用元组（tuple）类型让多个值作为一个复合值从函数中返回。
//    
//    下面的这个例子中，定义了一个名为minMax(_:)的函数,作用是在一个Int数组中找出最小值与最大值.
    func minMax(array:[Int]) ->(min:Int,max:Int)?{
        
        if array.isEmpty { return nil }
        
        var currentMin = array[0]
        var currentMax = array[0]
        
        for value in array[1..<array.count]{
            if value < currentMin{
                currentMin = value
            }else if(value > currentMax){
                currentMax = value
            }
        }
        return (currentMin,currentMax)
    }
    // 这个版本的sayHello(_:)函数,得到了两个人的名字,会同时返回对他俩的问候:
    func sayHello(to person: String, and anotherPerson: String) -> String{
         return "Hello \(person) and \(anotherPerson)!"
    }
    
   // 默认参数值（Default Parameter Values）
    func someFunction(parameterWithDefault: Int = 12) -> Int {
        return parameterWithDefault
    }
    // 可变参数（Variadic Parameters）
    func arithmeticMean(numbers: Double...) -> Double{
        var total : Double = 0
        for number in numbers{
            total += number
        }
        return total / Double(numbers.count)
    }
    
    // 常量参数和变量参数（Constant and Variable Parameters）
    func alignRight(var string: String ,totalLength: Int,pad: Character) -> String{
        let amountPad =  totalLength - string.characters.count
        if  amountPad < 1{
            return string
        }
        let padString = String(pad)
        for _ in 1...amountPad{
            string = padString + string
        }
        return string
    }
    
    // 输入输出参数（In-Out Parameters）
    func switchTwoInts(inout a : Int ,inout b:Int) {
        let temporaryA = a;
        a = b
        b = temporaryA
    }
    
    
    // 函数类型 （Function Types）
    func addTwoInts(a: Int, _ b: Int) -> Int {
        return a + b
    }
    func multiplyTwoInts(a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    /**
    函数类型作为参数类型（Function Types as Parameter Types）
    */
    
    func printMathResult(mathfunction: (Int, Int) -> Int ,_ a:Int ,_ b: Int){
        print("Resutl is \(mathfunction(a,b))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
    函数类型作为返回类型（Function Type as Return Types）
    */
    
    func stepForward(input: Int , input2: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int , input2: Int) -> Int {
        return input - 1
    }
    
    func chooseStepFunction(backwards: Bool) -> (Int,Int) -> Int {
        return backwards ? stepBackward : stepForward
    }
    
    /**
    嵌套函数（Nested Functions）
    */
    func chooseStepFunctuon2(backwards: Bool) -> (Int) -> Int{
        func stepForward(input: Int) -> Int { return input + 1 }
        func stepBackward(input: Int) -> Int { return input - 1 }
        return backwards ? stepBackward : stepForward
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
