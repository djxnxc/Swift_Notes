
//willSet didSet 不仅可以在属性值改变后触发didSet，也可以在属性值改变前触发willSet
class People{
    var name:String = ""
    var age:Int = 0{
        willSet{
            //自带newValue参数，表示将要赋值于age的新值
            print("当前值：\(age),将要赋给age的值:\(newValue)")
        }
        didSet{
            //自带oldValue参数，表示赋值前age的旧值，此处是0
            print("旧值：\(oldValue),已经赋值后的新值：\(age)")
        }
    }
}
let p = People()
p.age = 10


