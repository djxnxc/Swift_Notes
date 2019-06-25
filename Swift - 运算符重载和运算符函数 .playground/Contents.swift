import UIKit
//Swift - 运算符重载和运算符函数
//让已有的运算符对自定义的类和结构进行运算或者重新定义已有运算符的运算规则，这种机制被称为运算符重载。

struct Pointer{
    var x=0,y = 0
}
//1、重写运算符+实现两个坐标（结构体）相加运算
func +(pointA: Pointer, pointB: Pointer) -> Pointer {
    return Pointer(x: pointA.x+pointB.x, y: pointA.y+pointB.y)
}
var point_A = Pointer(x: 10, y: 12)
let point_B = Pointer(x: 2, y: 3)
print("point_A+pointB:\(point_A+point_B)\n")//(x: 12,y: 15)

//2、重写== 判断两个坐标是否相同
func ==(_ pointA: Pointer,_ pointB: Pointer) -> Bool{
    return (pointA.x==pointB.x) && (pointA.y==pointB.y)
}
if point_A == point_B {
    print("\(point_A)==\(point_B)\n")

}else{
    print("\(point_A)!=\(point_B)\n")
}
//3、多个运算符重载 pointA要设置inout 并且是var修饰
func +=(_ pointA: inout Pointer, _ pointB: Pointer) -> Pointer{
    pointA = pointA + pointB
    return pointA
}
print("point_A加上pointB后为:\(point_A += point_B)")

