//1、private私有方法
class A{
    private func testA(){
        print("private:私有方法")
    }
    func b() {
        
    }
}
//继承访问不了A中的私有方法
class B:A{
    func testB() {
        b()
//        testA()
    }
}
//类扩展可以访问A中的私有方法
extension A{
    func exA(){
        testA()
        b()
    }
}
//2、fileprivate
//fileprivate修饰的方法，在当前swift文件都可以访问
class C{
    fileprivate func testC(){
        print("fileprivate：文件私有")
    }
}
class D: C {
    func testD(){
        testC()
    }
}
//3、internal (默认访问级别，internal修饰符可写可不写)访问级别所修饰的属性或方法在源代码所在的整个模块都可以访问
//4、public 可以被任何人访问。但其他 module(模块) 中不可以被 override 和继承，而在 module 内可以被 override 和继承。
//5、open可以被任何人使用，包括 override 和继承。

//访问权限排序 open > public > internal(默认权限，整个工程都可以访问) > fileprivate(当前swift文件都可以访问) > private(仅限当前类方法、类扩展中可以调用)
