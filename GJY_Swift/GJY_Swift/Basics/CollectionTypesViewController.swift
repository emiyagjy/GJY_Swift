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
        
        
     
        // MARK: - 数组(Arrays)
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
 
        // MARK: - 集合(Sets)
        // 你可以通过构造器语法创建一个特定类型的空集合：
        var letters = Set<Character>()
        letters.insert("a");
        print("集合 letters is \(letters)")
        letters = []
        // letters 现在是一个空的Set, 但是它依然是 Set<Character> 类型
         print("letters[] is \(letters)")
        
        // 用数组字面量创建集合
        var favoriteGenres1 : Set<String> = ["Rock","Classical","Hip hop"]
//        var favoriteGenres2 : Set = ["Rock","Classical","Hip hop"]
        
        // 访问和修改一个Set
        
        // 你可以通过调用Set的insert(_:)方法来添加一个新元素：
        
        favoriteGenres1.insert("Jazz")
        
        // 为了找出一个Set中元素的数量，可以使用其只读属性count:
        print("I have \(favoriteGenres1.count) favorite music genres.")
        // 使用布尔属性isEmpty作为一个缩写形式去检查count属性是否为0:
        
//        favoriteGenres1 = []
        if favoriteGenres1.isEmpty {
            print("As far as music goes, I'm not picky.")
        } else {
            print("I have particular music preferences.")
        }
        // 你可以通过调用Set的remove(_:)方法去删除一个元素，
        if let removeGenre = favoriteGenres1.remove("Rock"){
            print("\(removeGenre)? I'm over it.")
        }else{
            print("I never much cared for that.")
        }
        // 使用contains(_:)方法去检查Set中是否包含一个特定的值。
        
        if favoriteGenres1.contains("Rock"){
            print("I get up on the good foot.")
        }else{
            print("It's too funky in here.")
        }
        // 遍历一个set
        for genre in favoriteGenres1.sort(){
            print("\(genre)")
        }
        

//        完成集合操作
//        
//        你可以高效的完成Set的一些基本操作，比如把两个集合组合到一起，判断两个集合共有元素，
//        或者判断两个集合是否全包含，部分包含或者不相交。
        
//        使用intersect(_:)方法根据两个集合中都包含的值创建的一个新的集合。
//        使用exclusiveOr(_:)方法根据值在一个集合中但不在两个集合中的值创建一个新的集合。
//        使用union(_:)方法根据两个集合的值创建一个新的集合。
//        使用subtract(_:)方法根据不在该集合中的值创建一个新的集合。
        
        let oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [1, 2, 4, 6, 8]
        let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
        
        // intersect
        let interSet =  oddDigits.intersect(evenDigits); // 两个集合共有的
        print("集合 interSet = \(interSet)");
        // exclusiveOr
        let exclusSet = oddDigits.exclusiveOr(evenDigits).sort(); // 在一个集合中，不在2个集合中
        print("集合 exclusSet = \(exclusSet)");
        // union
        let unionSet = oddDigits.union(evenDigits).sort() // 并集
        print("集合 union = \(unionSet)");
        // subtract
//        let subtractSet = oddDigits.subtract(singleDigitPrimeNumbers).sort() // [1,9] A叫B ,显示只有A有的元素
          let subtractSet = singleDigitPrimeNumbers.subtract(oddDigits).sort() // [2]
        
        print("集合 subtractSet = \(subtractSet)");
        
//        使用“是否等”运算符(==)来判断两个集合是否包含全部相同的值。
//        使用isSubsetOf(_:)方法来判断一个集合中的值是否也被包含在另外一个集合中。
//        使用isSupersetOf(_:)方法来判断一个集合中包含的值是另一个集合中所有的值。
//        使用isStrictSubsetOf(_:)或者isStrictSupersetOf(_:)方法来判断一个集合是否是另外一个集合的子集合或者父集合并且和特定集合不相等。
//        使用isDisjointWith(_:)方法来判断两个结合是否不含有相同的值
        
        let houseAnimals: Set = ["🐶", "🐱"]
        let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
        let cityAnimals: Set = ["🐦", "🐭"]
        houseAnimals.isSubsetOf(farmAnimals)
         print("houseAnimals.isSubsetOf(farmAnimals) = \(houseAnimals.isSubsetOf(farmAnimals))");
        // true
        farmAnimals.isSupersetOf(houseAnimals)
        print("farmAnimals.isSupersetOf(houseAnimals) = \(farmAnimals.isSupersetOf(houseAnimals))");
        // true
        farmAnimals.isDisjointWith(cityAnimals)
        print("farmAnimals.isDisjointWith(houseAnimals) = \(farmAnimals.isDisjointWith(houseAnimals))");
        // true
        
        
        // MARK: - 字典(Dictionary)
        // 创建一个空字典
        var numberOfIntegers = [Int : String]()
        // namesOfIntegers 是一个空的 [Int: String] 字典
        // 这个例子创建了一个[Int: String]类型的空字典来储存英语对整数的命名。它的键是Int型，值是String型。
        numberOfIntegers[16] = "sixteen"
        numberOfIntegers = [:]
        print("字典 numberOfIntegers = \(numberOfIntegers)");
        
        // 字典字面量
        var info : [String:String] = ["name":"小看","age":"28"]
//        var info =  ["name":"小看","age":"28"]
        print("The dictionary of info contains \(info.count) items.")
        info["height"] = "180cm"
        print("The dictionary of info \(info)")
        
//        updateValue(_:forKey:)函数会返回包含一个字典值类型的可选值。举例来说：对于存储String值的字典，
//        这个函数会返回一个String?或者“可选 String”类型的值。
        if let oldValue = info.updateValue("小看2015", forKey: "name"){
            print("oldValue is \(oldValue)") // 返回旧值
        }
        print("The dictionary of info \(info)")
        
        // 下标语法来在字典中检索特定键对应的值
        if let name  = info["name"] {
             print("name is \(name)")
        }
        
        let name:String! = info["name"]
        print("name2 is \(name)")
        
        // 我们还可以使用下标语法来通过给某个键的对应值赋值为nil来从字典里移除一个键值对：
//        info["name"] = nil
//        print("info[\"name\"] = nil is \(info)")
        
        if let removedValue = info.removeValueForKey("name") {
            print("The removed  info name is \(removedValue).")
        } else {
            print("The info dictionary does not contain a value for DUB.")
        }
        print("info is \(info)")
        
        // 字典遍历
        for (code,value) in info{
            print("code is \(code) value is \(value)")
        }
        
       
        // 通过访问keys或者values属性，我们也可以遍历字典的键或者值。
        
        for code in info.keys {
            print("code is \(code)")
        }
        
        for value in info.values{
            print("value is \(value)")
        }
        
        // keys或者values属性直接构造一个新数组：
        let keys = info.keys.sort()
        print("keys is \(keys)")
        
        let values = info.values.sort()
        print("values is \(values)")
        
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
