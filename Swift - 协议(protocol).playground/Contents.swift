//协议里只做方法的声明，方法名、返回值、参数，没有方法的实现
protocol Person{
    //读写属性
    var name:String{get set}
    //只读属性
    var age:Int{get}
    //类型方法
    static func method1()
    //实例方法
    func method2()
    //突变方法
    mutating func method3()
}
//协议可以继承
protocol A{
    func testA()
}
//协议B继承协议A
protocol B:A {
    func testB()
}
//创建类C遵守协议B
class C: B {
    func testA() {
        print("调用协议A方法")
    }
    func testB() {
        print("调用协议B方法")
    }
}

protocol D{
    func testD()
}
//父类C因遵循了协议B，且协议B继承于A，子类CC可以重写testA()、testB()方法、调用testD()
class CC:C,D{
    override func testA() {
        print("重写了协议A方法")
    }
    override func testB() {
        print("重写了协议B方法")
    }
    func testD() {
        print("调用了协议D方法")
    }
}
let c = C()
c.testA()
c.testB()
let cc = CC()
cc.testA()
cc.testB()
cc.testD()

//如果某个类集继承了某个父类，又遵循了某个协议，那么冒号后面应该先写父类，再写协议
/*
class 类名:父类，协议A，协议B{
    
}
 */
