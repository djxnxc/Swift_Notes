import UIKit

//区间运算符可以用来表示两个操作数之间的范围集合。
//1、闭区间运算: 1...100 从1到100包括100
for num in 1...4 {
    print("闭区间运算:\(num)")//输出1 2 3 4
}
print("--------")
//2、半闭区间运算: 1..<10 从1到9不包括10
for num in 1..<4 {
    print("半闭区间运算:\(num)")//输出1 2 3
}

//3、倒序 使用reversed()进行倒序,可以用来倒序输出数组，字符串倒序等
let arr: [String] = ["one","two","three"]
for string in arr.reversed() {
    print("倒序:\(string)")//输出4 3 2 1
}
var str = ""
for c in "abc".reversed(){
    str.append(c)
}
print("abc倒序:\(str)")

//4、区间运算符在字符串中常用示例
//4.1、截取字符串
let temp = "Swift is very good"
let tempByIndex = temp.index(temp.startIndex, offsetBy: 6)//下标6
let tempByIndex1 = temp.index(temp.startIndex, offsetBy: 8)//下标8
let tempStr = temp[tempByIndex..<tempByIndex1]//截取下标6到下标8之间的字符串（包括下标6不包括下标8）
let tempStr1 = temp[tempByIndex...]//获取下标6后面的字符串(包括下标6)
let tempStr2 = temp[..<tempByIndex]//获取下标6前面的字符串(不包括下标6)
let tempArr = temp.split(separator: " ", maxSplits: 2, omittingEmptySubsequences: true)//按空格拆分字符串m，最多拆分2次 ["Swift", "is", "very good"]
//4.2、检查字符串是否包含大小写字母
let interval = "A"..."Z"
for c in temp {
    if interval.contains(String(c)){
        print("\(temp)中包含大写字母\(c)")//"Swift is very good中包含大写字母S\n"
        break
    }
}




