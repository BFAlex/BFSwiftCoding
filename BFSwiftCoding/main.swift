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

// MARK: - 简单值
/*
 1、使用 let 来定义常量， var 定义变量。常量的值无需在编译时指定，但是至少要赋值一次。
 2、一个常量或变量必须与赋值时拥有相同的类型。
 3、值永远不会隐含转换到其他类型。不同类型的转换需要构造目标类型的实例。
 4、字符串中包含变量格式：以小括号来写值，并用反斜线("")放在小括号之前。
 5、创建一个数组和字典使用方括号 "[]" ，访问其元素则是通过方括号中的索引或键。
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





