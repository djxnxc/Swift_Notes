
//一、if语句
let num = 4
if  num > 3 {
    print("true")
}else{
    print("false")
}
//二、switch语句
var age = 5
func test(age:Int){
    switch age {
    case 0...6 where age > 4://1、case条件可以是区间并且可以使用where来判断额外条件
        print("\(age)岁上幼儿园")
    case 7...12:
        print("\(age)岁上小学")
        fallthrough //2、fallthrough会跳过当前case中fallthrough后的语句，直接执行下个case语句
        print("这句不执行")
    case 13...15:
        print("\(age)岁上中学")
    case 16...://3、条件可以使半区间、区间、元组
        print("\(age)岁上完中学了")
    default:
        print("\(age)岁")
    }
}
test(age: 5)//执行一个case
//fallthrough用法: 会跳过当前case中fallthrough后的语句，直接执行下个case语句
test(age: 8)//除了执行当前case紧接着执行下个case
test(age: 20)

//三、for循环
print("*******for循环*******")
for i in 1...4 {
    print("\(i)")
}
let array = [1,2,3,4]
for number in array {
    print("遍历数组:\(number)")//按顺序输出
}
let dict = ["one":1,"two":2,"three":3] as [String:Int]
for (key,value) in dict {
    print("遍历字典\(key):\(value)")//无序输出
}
let str = "kangkang"
for c in str {
    print("遍历字符串：\(c)")
}
//forEach循环
//str.forEach { (c) in
//    print(c)
//}
str.forEach {print($0)}//两种写法均可
//array.forEach { (num) in
//    print(num)
//}
array.forEach {
    print($0)
}
//dict.forEach { (key,value) in
//    print("\(key):\(value)")
//}
dict.forEach {
    print("\($0.key):\($0.value)")
}

//四、while循环
var  i = 0
repeat{
    i+=1
}while i<3
