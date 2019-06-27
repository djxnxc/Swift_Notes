import UIKit

//数组
var numbers = ["one","two","three"] //声明一个数组
var array = [String]()//初始化一个空数组
var array1 = Array<Int>()
array1.append(1)
array.append("seven")//append添加元素
array += ["six"]//运算符添加元素 等价于array = array +["five"]
array.insert("five", at: 2)//在下标位2的位置插入元素six

array[0] = "four"//通过下标修改元素值
array
array[1...2] = ["five","six"]//通过下标修改下标区间内的多个元素的值
array

array += numbers//两个数组相加 ["four", "five", "six", "one", "two", "three"]
//遍历数组
for value in array {
    print("\(value)")
}
//array.enumerated() 索引 (下标,值)
for (index,value) in array.enumerated() {
    print("\(index):\(value)")
}
//将array里字符串长度大于3的元素放到新数组里
let NewArray = array.filter { (value) -> Bool in
    value.count > 3
}
NewArray //["four", "five", "three"]
//将array里字符串长度大于3的元素放到新数组里
let NewArray1 = array.filter { $0.count>3 }
NewArray1

//初始化多个元素
let temp = Array(0...5).map { (value) -> String in
    return  "元素" + String(value)
}
//初始化多个元素
let temp1 = Array(4...8).map { "元素\($0)"}
temp1


array.swapAt(0, 3)//通过下标交互数组内的两个元素 ["one", "five", "six", "four", "two", "three"]
array

array.remove(at: 1)//删除数组中下标为1的元素
array//["one", "six", "four", "two", "three"]

array.removeLast()//移除最后一个元素
array

array.removeFirst()//移除第一个元素
array

array.removeSubrange(1...2)//删除下标区间的多个元素
array

array.removeAll(keepingCapacity: true)//移除数组所有元素,保留分配的空间

array1.removeAll()//移除数组所有元素,且删除分配的空间
array1




