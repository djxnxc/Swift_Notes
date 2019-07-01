var count = 0
class BaseClass {
    //1、构造方法
    init() {
        count += 1
    }
    //2、析构函数
    deinit {
        count -= 1
        print("对象释放了")
    }
}
var tempClass: BaseClass? = BaseClass()
print("初始化对象:\(count)")
tempClass = nil
print("释放对象:\(count)")

//1、类初始化时给属性赋值
class Person{
    var name: String
    var age: Int
    init() {
        name = ""
        age = 0
    }
}
let p = Person()
p.name = "kangkang"
p.age = 18

//2、自定义析构函数（覆盖init函数）
class NewPerson{
    var name: String
    var age: Int
//    自定义了构造函数,会覆盖init()方法
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}
let newP = NewPerson(name: "dandan", age: 10)//创建对象时使用自定义的构造函数

//3、字典转模型(自定义构造函数)
class Student{
    var ID:String
    var name:String
    var age:Int
    
    init(dict:Dictionary<String, Any>) {
        self.ID = dict["ID"] as! String
        self.name = dict["name"] as! String
        self.age = dict["age"] as! Int
    }
    //实例方法
    func getId() -> String {
        return ID
    }
}
let student = Student(dict: ["ID":"100","name":"xiaozhang","age":20,"sex":"男"])//将字典转换model
print("ID:\(student.getId())")



