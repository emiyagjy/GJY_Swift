//
//  ViewController.swift
//  GJY_Swift
//
//  Created by 顾嘉园 on 15/11/26.
//  Copyright © 2015年 com.my.demo. All rights reserved.
//

import UIKit

let maxNumber = 10
var currentLoginAttempt = 0
var welcomeMessage:String = "hello world"


class BasicViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        /**
         基础部分 
         用 let 来声明常量 ，var 声明变量
        */
        self._setupConstant();
        
        
        // TODO: 今天继续学习swift
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - 常量&变量
    func _setupConstant(){
        print("常量 is \(maxNumber)");
        
        // 你可以在一行中定义多个同样类型的变量，用逗号分割，并在最后一个变量名之后添加类型标注：
        var red, green,blue :Double
        red = 10.0;
        green = 15.0;
        blue = 20.0;
        print("多个同样类型的变量 red is \(red) green is \(green) blue is \(blue)");
        
        // 类型标注
        var friendlyWelcome : String;
        friendlyWelcome  = "Hello";
        
        // 输出
        print("The current value of friendlyWelcome is \(friendlyWelcome)");
        
        // 注释嵌套
        /* 这是第一个多行注释的开头
        /* 这是第二个被嵌套的多行注释 */
        这是第一个多行注释的结尾 */
        
        
        // 整型
        // 浮点型
//       * Double表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。
//       * Float表示32位浮点数。精度要求不高的话可以使用此类型。
        
        var price : Float;
        price = 25.5;
        print("The current value of price is \(price)");
        
        // 整型和浮点数转换
        let three = 3;
        let pointOneFourOneFiveNine = 0.14159;
        let pi = Double(three) + pointOneFourOneFiveNine;
        print("The current value of pi is \(pi)");

        // 浮点数到整数的反向转换同样行，整数类型可以用Double或者Float类型来初始化：
        let intergePi = Int(pi);
        print("The current value of intergePi is \(intergePi)");
        // ps:当用这种方式来初始化一个新的整数值时，浮点值会被截断。也就是说4.75会变成4，-3.9会变成-3。
        
        
        // 类型别名
        typealias AudioSample = UInt16;
        let maxAmplitudeFound = AudioSample.min;
        print("The current value of maxAmplitudeFound is \(maxAmplitudeFound)");
        
        
        // 布尔值
        let orangesAreOrange : Bool = true;
        print("The current value of orangesAreOrange is \(orangesAreOrange)");
        let turnipsAreDelicious = false;
        if turnipsAreDelicious {
//            print("Mmm, tasty turnips!");
        } else {
//            print("Eww, turnips are horrible.");
        }
        
        // 元组（tuples）
        let http404Error = (404,"Not Found");
        // http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
        
        let (statusCode, statusMessage) = http404Error;
        print("The status code is \(statusCode)");
        // 输出 "The status code is 404";
        print("The status message is \(statusMessage)");
        // 输出 "The status message is Not Found";
        // 如果你只需要一部分元组值，分解的时候可以把要忽略的部分用下划线（_）标记：
        let (justTheStatusCode,_) = http404Error;
        print("The status code is \(justTheStatusCode)");
        
        
        // 可选类型
        
//        来看一个例子。Swift 的String类型有一种构造器，作用是将一个String值转换成一个Int值。然而，并不是所有的字符串都可以转换成一个整数。字符串"123"可以被转换成数字123，但是字符串"hello, world"不行。
//        
//        下面的例子使用这种构造器来尝试将一个String转换成Int：
        
        let possibleNumber = 123;
        let convertedNumber:Int = Int(possibleNumber);
        print("The value of convertedNumber is \(convertedNumber)");
        // convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"
//        因为该构造器可能会失败，所以它返回一个可选类型（optional）Int，而不是一个Int。一个可选的Int被写作Int?而不是Int。问号暗示包含的值是可选类型，也就是说可能包含Int值也可能不包含值。（不能包含其他任何值比如Bool值或者String值。只能是Int或者什么都没有。）
        
        // nil 

//        你可以给可选变量赋值为nil来表示它没有值：
    
        var serviceCode : Int? = 404;
        serviceCode = nil;
        // serverResponseCode 现在不包含值
        print("The value of serviceCode is \(serviceCode)");
    
        // 如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为nil：
        var surveyAnswer : String?;
//        surveyAnswer = "abc";
        print("surveyAnswer is \(surveyAnswer)");
        // surveyAnswer 被自动设置为 nil

        /*
        ps：
        Swift 的nil和 Objective-C 中的nil并不一样。在 Objective-C 中，nil是一个指向不存在对象的指针。在 Swift 中，nil不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设置为nil，不只是对象类型。
        */
        
        
       //  if 语句以及强制解析
        
//        let possibleNumberNew = 123;
        let possibleNumberNew = "abc";

        let convertedNumberNew :Int? = Int(possibleNumberNew);
        if convertedNumberNew != nil {
            print("convertedNumber contains some integer value.")
        }
        
//        当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号（!）来获取值。
        // 这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析（forced unwrapping）：
        
        if convertedNumberNew != nil {
            print("convertedNumber has an integer value of \(convertedNumberNew!).")
        }
        
        
        // 可选绑定
        if let actualNumber:Int = Int(possibleNumberNew)  {
            print("\'\(possibleNumberNew)\' has an integer value of \(actualNumber)");
        }else{
            print("\'\(possibleNumberNew)\' could not be converted to an integer")
        }
        
        // 隐式解析
        let possibleString: String? = "An optional string.";
        let forcedString: String = possibleString!; // 需要惊叹号来获取值
        print("forcedString current value is \(forcedString)")
        let assumedString: String! = "An implicitly unwrapped optional string."; //说明肯定是有值的
        let implicitString: String = assumedString ; // 不需要感叹号
        print("implicitString current value is \(implicitString)")
        
        // 你可以把隐式解析可选类型当做一个可以自动解析的可选类型。
        // 你要做的只是声明的时候把感叹号放到类型的结尾，而不是每次取值的可选名字的结尾。
        
        
        // 使用断言进行调试
        let age = 13;
        assert(age>=0,"A person's age cannot be less than zero");
        // 因为 age < 0，所以断言会触发 ,只有当为false 时候 就会触发断言，终止应用
        // ps : 当条件可能为假时使用断言，但是最终一定要保证条件为真，这样你的代码才能继续运行。断言的适用情景：
//        整数类型的下标索引被传入一个自定义下标脚本实现，但是下标索引值可能太小或者太大。
//        需要给函数传入一个值，但是非法的值可能导致函数不能正常执行。
//        一个可选值现在是nil，但是后面的代码运行需要一个非nil值。
        
        
    }


}

