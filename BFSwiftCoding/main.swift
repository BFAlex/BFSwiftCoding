//
//  main.swift
//  BFSwiftCoding
//
//  Created by BFAlex on 2018/4/4.
//  Copyright © 2018年 BFAlex. All rights reserved.
//

import Foundation

print("Hello, World!")

print("Swift输出接口：print")

// MARK: - 注释说明
// FIXME: - 表示此处有bug，或者需要优化
// TODO: - 一般用于写到哪了，做个标记，以后回来继续

/*
 Swift特征描述：
 a、关于变量类型，存在类型推导机制
 b、条件判断，不能隐含的与0比较
 **/

// MARK: - 简单值

/*
 1、使用 let 来定义常量， var 定义变量。常量的值无需在编译时指定，但是至少要赋值一次。
 2、一个常量或变量必须与赋值时拥有相同的类型。
 3、值永远不会隐含转换到其他类型。不同类型的转换需要构造目标类型的实例。
 4、字符串中包含变量格式：以小括号来写值，并用反斜线("")放在小括号之前。
 5、创建一个数组和字典使用方括号 "[]" ，访问其元素则是通过方括号中的索引或键。
 6、如何创建空数组和空字典？
 **/

let constant = 666
var variable = 999
let str = "常量值：\(constant)，变量值：\(variable)"
print(str)

var arr1 = ["a", "b", "c"];
var arr2: Array = ["A", "B", "C"];
print("数组(拼接)：\(arr1 + arr2)");

var dict1 = [
    "key1": "value1",
    "key2": "value2",
];
var dict2: Dictionary = [
    "k1": "v1",
    "k2": "v2",
];
print("字典1:\(dict1), 字典2:\(dict2)");
print("字典取值: \(dict1["key1"])");

// FIXME: - 如何创建空数组和空字典

// MARK: - 控制流

/*
 1、使用 if 和 switch 作为条件控制。
 2、使用 for-in 、 for 、 while 、 do-while 作为循环。
 3、在 if 语句中，条件必须是布尔表达式，不能隐含的与0比较。可以一起使用 if 和 let 来防止值的丢失。这些值是可选的。可选值可以包含一个值或包含一个 nil 来指定值还不存在。写一个问号 "?" 在类型后表示值是可选的。
 4、for：在循环中保持一个索引，通过 "..<"(小于)||..."(等于) 来表示索引范围或明确声明一个初始值、条件、增量。
 **/

let numArr = [10, 30, 22, 6, 66, 99];
var x = 0;
var y = 0;
for num in numArr {
    if num > 50 {
        x += 1;
    } else {
        y += 1;
    }
}
print("数组\(numArr)中大于50的成员有\(x)个，不大于50的有\(y)个")

var var1: String?;
var var2: String? = "可选值变量有值非nil";
if let v = var1 {
    print("可选值变量var1存在非nil值为：\(var1)");
} else {
    print("可选值变量var1为nil值");
}
if let v = var2 {
    print("可选值变量var2存在非nil值为：\(var2!)");
} else {
    print("可选值变量var2为nil值");
}

let numDict2 = [
    "arr1": [1, 2, 3],
    "arr2": [4, 5, 6],
    "arr3": [7, 8, 9],
];
for (key, arrValue) in numDict2 {
    print("key\(key)对应的value是：\(arrValue)");
}
for index in 0..<numArr.count {
    print("数组 \(numArr) 中索引号 \(index) 对应的值为 \(numArr[index])");
}


// MARK: - 函数和闭包

/*
 1、使用 func 声明一个函数。调用函数使用他的名字加上小括号中的参数列表。使用 -> 分隔参数的名字和返回值类型。
 2、使用元组(tuple)来返回多个值。
 3、函数可以接受可变参数个数，收集到一个数组中。
 4、函数可以嵌套。内嵌函数可以访问其定义所在函数的变量。可以使用内嵌函数来组织代码，避免过长和过于复杂。
 5、一个函数可以接受其他函数作为参数。
 6、函数实际是闭包的特殊情况。可以写一个闭包而无需名字，只需要放在大括号中即可。使用 in 到特定参数和主体的返回值。
 7、编写闭包时有多种选项。当一个闭包的类型是已知时，例如代表回调，你可以忽略其参数和返回值，或两者。单一语句的闭包可以直接返回值。
 8、可以通过数字而不是名字来引用一个参数，这对于很短的闭包很有用。一个闭包传递其最后一个参数到函数作为返回值。
 **/
func sayHello(name: String) {
    print("Hello, \(name)");
}
func addCalclulator(num1: Int, num2: Int) -> Int {
    return num1 + num2;
}
sayHello(name: "Alex");
let fx = 1;
let fy = 2;
print("\(fx) + \(fx) = \(addCalclulator(num1: fx, num2: fx))");
// 元组
func persionInfo() -> (String, Int, String) {
    let name = "Alex";
    let age = 18;
    let phoneNum = "16888888888";
    
    return (name, age, phoneNum);
}
let (name, age, phoneNum) = persionInfo();
print("\(name) 年年 \(age) ，电话是：\(phoneNum)");
print("返回元组值：\(persionInfo())");
// 可变参数
func addCalculator2(nums: Int...) -> Int {
    var result = 0;
    for num in nums {
        result += num;
    }
    
    return result;
}
let addResult = addCalculator2(nums: 1, 2, 3, 4, 5);
print("[1, 5]的总和为：\(addResult)");
// 函数嵌套（类型一）
func addCalculator3(nums: Int...) -> Int {
    var result = 0;
    // inner method（必须先声明，再使用）
    func innerAddCalculater(num: Int) {
        result += num;
    }
    
    for num in nums {
        innerAddCalculater(num: num);
    }
    
    
    
    return result;
}
// 函数嵌套（类型二）
func addCalculator4() -> Int {
    var result = 0;
    // inner method（必须先声明，再使用）
    func innerAddCalculater(num1: Int, num2: Int) -> Int {
        return num1 + num2;
    }
    
    result = innerAddCalculater(num1: 1, num2: 1);
    
    return result;
}
print("基础加法 1 + 1 = \(addCalculator4())");
// 闭包
//numArr.map({
//    (num: Int) -> Int in
//    let result = 2 * num;
//    
//    return result;
//});
// FIXME: - 需要更深入了解闭包的定义和使用


// MARK: - 类和对象

/*
 1、使用 class 可以创建一个类。一个属性的声明则是在类里作为常量或变量声明的，除了是在类的上下文中。方法和函数也是这么写的。
 2、通过在类名后加小括号来创建类的实例。使用点语法来访问实例的属性和方法。
 3、在创建类实例时，可以使用init构造器设置类
 4、使用 deinit 来创建一个析构器，来执行对象销毁时的清理工作。
 
 5、子类包括其超类的名字，以冒号分隔。在继承标准根类时无需声明，所以你可以忽略超类。
 6、子类的方法可以通过标记 override 重载超类中的实现，而没有 override 的会被编译器看作是错误。编译器也会检查那些没有被重载的方法。
 
 7、属性增加有 getter 和 setter ，还可以设置 willSet 和 didSet 方法。
 **/

class OneClass {
    
    let note = "Swift的类定义是可以不用实现继承关系的";
    
    func showNote() -> String {
        return note;
    }
}
print("关于自定义一个类，\(OneClass().showNote())");
// 构造器传参
class ClassTwo {
    
    var num: Int;
    
    init(num: Int) {
        self.num = num;
    }
    
    func showNum() {
        print("通过构造器设置的参数值：\(self.num)");
    }
}
print("构造器传参的使用：");
ClassTwo(num: 6).showNum()
// 属性的 setter 和 getter
class ClassThree: NSObject {
    
    var vnum: Int {
        get {
            return self.vnum * 2;
        }
        set {
            self.vnum = newValue;
        }
    }
}


// MARK: - 枚举与结构

/*
 1、使用 enum 来创建枚举。有如类和其他命名类型，枚举可以有方法。
 2、一个枚举的实例成员可以拥有实例的值。相同枚举成员实例可以有不同的值。
 **/

enum Num_ENUM: Int {
    case one
    case two, three
    
    func num_EnumShow() -> String {
        
        switch self {
        case .one:
            print("枚举类型一");
            return "枚举类型一";
        default:
            print("枚举类型二||三");
            return "枚举类型二||三";
        }
    }
}
let one = Num_ENUM.one;
print("整形枚举类型首默认值：\(one)");
print("one.rawValue: \(one.rawValue)");
print("枚举中的方法调用：\(one.num_EnumShow())");

enum Str_ENUM: String {
    case a
    case b, c
    
    func Str_EnumShow() -> String {
        
        switch self {
        case .a:
            print("str枚举类型a");
            return "str枚举类型a";
        default:
            print("str枚举类型b||c");
            return "str枚举类型b||c";
        }
    }
}
let b_enum = Str_ENUM.b;
print("case值：\(b_enum)");
print("case的默认值：\(b_enum.rawValue)");
print("枚举中的方法调用：\(b_enum.Str_EnumShow())");
