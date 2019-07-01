//1、无参数无返回值函数
func test(){
    print("无参无返回函数:test")
}
test()
//2、有参数无返回值函数
func test1(parter:String) -> Void{
    print("有参数无返回函数:test1")
}
test1(parter: "test1")

//3、有参数有返回值函数
func test2(parter:String) -> String{
    print("有参数有返回函数:test2")
    return "test2:"+parter;
}
let result = test2(parter: "aaa")

//4、返回值是多个    使用inout修饰parter就可以实现在函数内改变parter的值（swift中String,Array,Dictionary是结构体类型，并不是类，作为参数传递的时候是值传递不是指针传递，使用inout修饰就变成指针传递）
func test3(_ parter:inout [Int]) -> ([Int],Int){
    print("返回多个值函数:test3")
    parter.append(10)
    return (parter,parter.count)
}
var arr = [1,2]
let result1 = test3(&arr)

//5、参数个数不定
//这是一个求和函数，参数个数不限
func test4(_ numbers:Int...) -> Int{
    var count: Int = 0
//    numbers.forEach { (number) in
//        count += number
//    }
    numbers.forEach {count += $0}
    return count
}
let result2 = test4(1,2,3,4)

//6、可以改变函数内外的参数值:inout修饰参数
func test5(age:inout Int) -> Int{
    age += 1
    return age
}
var age = 10
//let  newAge = test5(age: &10)这种写法是错误的 10是常量 不可修改
let  newAge = test5(age: &age)

//7、把函数为另一个函数的参数传递
func test6(a:Int, b:Int) -> Int{
    return a + b
}
func test6Result(myFun: (Int,Int) -> Int, x:Int, y:Int){
    print("test6Result:\(myFun(x,y))")
}
test6Result(myFun: test6, x: 1, y: 2)

//8、把函数类型作为返回值
func addOne(x:String) -> Int{
    return (Int(x) ?? 0) + 1
}
func returnFunc() -> (String) -> Int{
    return addOne
}
let result3 = returnFunc()
print("\(result3("3"))")


