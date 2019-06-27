
//1、结构体定义 struct
struct Person {
    var name:String = "default"
    var age:Int = 0
    var weight:Float = 0//斤
}
var person1 = Person(name: "kangkang", age: 18, weight:100.0)//初始化值
var person2:Person
person2 = person1
print(person2)
//一年之后 重了5.5斤
person2.age += 1 //修改值
person2.weight += 5.5

person1.weight = 200.0
print(person1.name)

//2、枚举定义
//定义一个没有原始值枚举
enum Direction{
    case east
    case south
    case west
    case north
}
//定义一个有原始值的枚举
enum Week: Int{
    case 星期日
    case 星期一
    case 星期二
    case 星期三
    case 星期四 = 4
    case 星期五
    case 星期六
    func description() -> String{
        switch self {
        case .星期日:
            return("休息日")
        case .星期六:
            return("休息日")
        default:
            return("工作日")
        }
    }
}
var today = Week.星期四
today.rawValue// rawValue原始值 4
Week.星期日.rawValue //根据星期四的原始值->星期日的原始值为0
Week.星期六.rawValue //根据星期四的原始值->星期六的原始值为6

var yestday = Week(rawValue: 3)//原始值->枚举值
yestday//星期三

print("\(Week.星期六):\(Week.星期六.description())")
print("\(today):\(today.description())")

