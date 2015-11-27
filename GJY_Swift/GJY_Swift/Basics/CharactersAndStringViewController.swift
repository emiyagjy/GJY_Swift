//
//  CharactersAndStringViewController.swift
//  GJY_Swift
//
//  Created by 顾嘉园 on 15/11/27.
//  Copyright © 2015年 com.my.demo. All rights reserved.
//

import UIKit

class CharactersAndStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 初始化空字符串
        let emptyString = "";               // 空字符串字面量
        let anotherEmptyString = String();  // 初始化方法
        
        // 您可以通过检查其Boolean类型的isEmpty属性来判断该字符串是否为空
        if emptyString.isEmpty {
            print("Nothing to see here")
        }
        if anotherEmptyString.isEmpty {
            print("Nothing to see here")
        }
        
        // 字符串可变性 (String Mutability)
        var variableString = "Horse";
        variableString += " and carriage";
        print("variableString is \(variableString)");
        
        
        // 使用字符
        // 您可通过for-in循环来遍历字符串中的characters属性来获取每一个字符的值：
        for character in "dog".characters{
            print("character is \(character)");
        }
        
//      let exclamationMark: Character = "!";
        let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
        let catString = String(catCharacters)
        print(catString)
        

        // 连接字符串和字符 (Concatenating Strings and Characters)
        let string1 = "hello";
        let string2 = " there";
        var welcome = string1 + string2;
        print("welcome = \(welcome)");
        
        var instruction = "look over"
        instruction += string2
        print("instruction = \(instruction)");
        
        // 您可以用append()方法将一个字符附加到一个字符串变量的尾部
        let exMark:Character  = "!";
        welcome.append(exMark);
        print("welcome2= \(welcome)");
//        ps：
//        您不能将一个字符串或者字符添加到一个已经存在的字符变量上，因为字符变量只能包含一个字符。
        
        // 字符串插值 (String Interpolation)
        
        let multiplier = 3;
        let message = "\(multiplier) times 2.5 is \(Double(multiplier)) * 2.5";
        print("message = \(message)");
        
        
        // Unicode
        let wiseWords = "\"Imagination is more important than knowledge\" - Einstein";
        print("wiseWords = \(wiseWords)");
        
        // 访问和修改字符串
        let greeting = "Guten Tag!";
        print(" greeting[greeting.startIndex]; = \(greeting[greeting.startIndex])");
        print(" greeting[greeting.endIndex]; = \(greeting[greeting.endIndex.predecessor()])");
        print(" greeting[greeting.startIndex.successor]; = \(greeting[greeting.startIndex.successor()])");
        // u
        let index = greeting.startIndex.advancedBy(7);
         print("advancedBy[7]; = \(greeting[index])");
        
        
        // 插入和删除 (Inserting and Removing)
        var welcomess = "hello";
        // 调用insert(_:atIndex:)方法可以在一个字符串的指定索引插入一个字符。
        
        welcomess.insert("!", atIndex: welcomess.endIndex);
        // 调用insertContentsOf(_:at:)方法可以在一个字符串的指定索引插入一个字符串。
        
        welcomess.insertContentsOf(" there".characters, at:welcomess.endIndex.predecessor());
      
        // 调用removeAtIndex(_:)方法可以在一个字符串的指定索引删除一个字符。
        welcomess.removeAtIndex(welcomess.endIndex.predecessor())
    
       
        let welIndex = welcomess.endIndex.advancedBy(-6);
        let range = welIndex..<welcomess.endIndex;
        welcomess .removeRange(range);
        
        print("welcome= \(welcomess)");
        
        
        // 比较字符串 (Comparing Strings)
        let quotation = "We're a lot alike, you and I.";
        let sameQuotation = "We're a lot alike, you and I.";
        if quotation == sameQuotation {
            print("These two strings are considered equal");
        }
        
        // 前缀/后缀相等 (Prefix and Suffix Equality)
        let romeoAndJuliet = [
            "Act 1 Scene 1: Verona, A public place",
            "Act 1 Scene 2: Capulet's mansion",
            "Act 1 Scene 3: A room in Capulet's mansion",
            "Act 1 Scene 4: A street outside Capulet's mansion",
            "Act 1 Scene 5: The Great Hall in Capulet's mansion",
            "Act 2 Scene 1: Outside Capulet's mansion",
            "Act 2 Scene 2: Capulet's orchard",
            "Act 2 Scene 3: Outside Friar Lawrence's cell",
            "Act 2 Scene 4: A street in Verona",
            "Act 2 Scene 5: Capulet's mansion",
            "Act 2 Scene 6: Friar Lawrence's cell"
        ]
        
        var act1SceneCount = 0;
        for scene in romeoAndJuliet{
            if scene.hasPrefix("Act 1"){
                ++act1SceneCount;
            }
        }
        print("There are \(act1SceneCount) scenes in Act 1")
        
        // 您可以用hasSuffix(_:)方法来计算发生在不同地方的场景数：
        var mansionCount = 0;
        var cellCount = 0;
        for scene in romeoAndJuliet {
            if scene.hasSuffix("Capulet's mansion") {
                ++mansionCount;
            } else if scene.hasSuffix("Friar Lawrence's cell") {
                ++cellCount;
            }
        }
        print("\(mansionCount) mansion scenes; \(cellCount) cell scenes");
        
        
        
        
        
        
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
