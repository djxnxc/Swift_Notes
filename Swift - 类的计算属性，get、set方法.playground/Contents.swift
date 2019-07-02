//1、Swift中类可以使用计算属性,即使用get和set来间接获取/改变其他属性的值
class Calcuator{
    var a:Int = 1
    var b:Int = 1
    
    var sum:Int{
        get{
            return a + b
        }
        set(new){
            //new表示给sum赋值的新值
            b = new - a
        }
    }
}
let cal = Calcuator()
cal.sum//2   (a+b)1+1
cal.sum = 5
cal.b//4  (new-a)5-1

//2、对于set方法有简写，简写时，新赋的值默认为newValue
class Calcuator1{
    var a:Int = 2
    var b:Int = 2
    var sum:Int{
        get{
            return a + b
        }
        set{
            a = newValue - b
        }
    }
}
let cal1 = Calcuator1()
cal1.sum = 6
cal1.a//4   6-2

//3、只有get方法，没有set方法
class calCuator2{
    var a:Int = 1
    var b:Int = 1
    
    var sum:Int{
        return a + b
    }
}




