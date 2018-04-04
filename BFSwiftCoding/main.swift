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





