//1、static关键字,修饰的静态属性、静态方法
//结构体(枚举、类)中静态属性（只能用类来调用），静态方法（只能用类调用）
struct Account{
    var accoutID:String
    var money:Int
    //静态属性(存储属性)
    static var maxMoney:Int = 10000
    //静态属性(计算属性)
    static var getAccountID:String{
        return "0000"
    }
    //static 可以在结构体中修饰方法
    static func minMoney(money:Int) -> Int{
        return maxMoney - money
    }
    //class 在结构体中不能修饰方法，也不能修饰属性
//    class var getMinMoney: Int {
//        return  maxMoney - 100
//    }
}
Account.maxMoney = 100
let maxMoney = Account.maxMoney
let account = Account.init(accoutID: "12334", money: 100)
account.accoutID
account.money
let minmoney = Account.minMoney(money: 1000)

//2、class关键字
class Person{
    var name:String = ""
    var age:Int = 0
    //修饰属性可以被重写
    class var job: String {
        return "IT"
    }
    //类中不能用class修饰存储属性
    //class var maxAge: Int = 100
    //class可以在类中修饰方法
    class func buy(money:Int) -> String{
        if money > 10 {
            return "买得起"
        }else{
            return "买不起"
        }
    }
    class func show(){
        
    }
    //static可以在类中修饰方法
    static func getMoney(money:Int) -> Int{
        return money
    }
    static func look(){
        
    }
}
Person.job
let result = Person.buy(money: 15)

/*static与classa使用时相同点、不同点
 相同点
 可以修饰方法，static 修饰的方法叫做静态方法，class 修饰的叫做类方法。
 都可以修饰计算属性。
 
 不同点
 class 不能修饰存储属性。
 class 修饰的计算属性可以被重写，static 修饰的不能被重写。
 static 可以修饰存储属性，static 修饰的存储属性称为静态变量(常量)。
 static 修饰的静态方法不能被重写，class 修饰的类方法可以被重写。
 class 修饰的类方法被重写时，可以使用static 让方法变为静态方法。
 class 修饰的计算属性被重写时，可以使用static 让其变为静态属性，但它的子类就不能被重写了。
 class 只能在类中使用，但是static 可以在类，结构体，或者枚举中使用。
 */
class Student:Person{
    //class修饰的类方法可以被重写
    override static func show(){
        print("重写了父类的类方法")
    }
    //static修饰的静态方法不能被重写
    //    override class func look(){//   报错:Cannot override static method

//        print("重写了父类的静态方法")
//    }
}
Student.show()
Student.look()





