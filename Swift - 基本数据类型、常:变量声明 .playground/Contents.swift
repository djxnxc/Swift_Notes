import UIKit

//1、变量：使用var声明
var str: String = "Swift_Notes"

//2、常量:使用let声明
let year: Int = 2019

//3、整型
 /*
    有符号整型：Int、Int8、Int16、Int32、Int64
    无符号整型：UInt、UInt8、UInt16、UInt32、UInt64
 */
let Int8NumerMax:Int8 = Int8.max//最大8位整型127  1111,1111
let Int16NumberMax: Int16 = Int16.max//最大16位整型32767 1111,1111,1111,1111

//4、浮点型
/*
 Float:32位浮点型
 Double:64位浮点型
 */
let floatNum: Float = 3.1234567890 //floatNum实际值 3.123457 6位小数且四舍五入
let doubleNum: Double = 3.123456789123456789 //doubleNum实际值 3.123456789123457 15位小数且四舍五入
let doubleNum1: Double = 3.1

//5、布尔型
let boolNum: Bool = true //swift中bool值没有YES和NO,只有true和false

//6、字符串
//6.1、判断字符串是否为空：isEmpty
var empty_str: String = ""
if empty_str.isEmpty {
    print("empty_str是空字符串")
}
//6.2、获取字符个数：str.count
let charachters_str: String = "swift_notes(学习笔记)"
print("charachters_str的字符个数:\(charachters_str.count)")
//6.3、字符串是否包含特定前缀/后缀：str.hasPrefix()是否包含前缀   str.hasSuffix()是否包含后缀
if charachters_str.hasPrefix("swift") {
    print("charachters_str包含前缀'swift'")
}
if charachters_str.hasSuffix("(学习笔记)") {
    print("charachters_str包含后缀\"(学习笔记)\"")
}
//6.4、可以使用"\()"拼接字符串,括号里可以是常量、变量
let str_short = "swift"
print("\(str_short)_notes")
print(str_short+"_notes")
let num_short = 24
print("one day has \(num_short) hours")
var week = 4
print("one month has \(week) weeks")
//6.5、字符串大小写转换
let uppercase = str.uppercased()//小写字符转换成大写"Swift_Notes"->"SWIFT_NOTES"
let lowercase = str.lowercased()//大写转换成小写"Swift_Notes"->"swift_notes"
let capitalized = charachters_str.capitalized//让字符串中的单词首字母大写"swift_notes(学习笔记)"->"Swift_Notes(学习笔记)"

//7、字符：Character
let character: Character = "+"
var character1 = "A"

//8、元组:tuples(String,Bool,Float)可以包含多个不同类型的变量、常量（下标从0开始）
let myTuples = (one:"swift",100,"$",month:24)
//8.1、根据下标位置获取的成员
print(myTuples.one)//已定义下标one可以通过myTuples.one与myTuples.0等价都是获取元组第1个元素
print(myTuples.1)//myTuples.1获取元组第2个元素












