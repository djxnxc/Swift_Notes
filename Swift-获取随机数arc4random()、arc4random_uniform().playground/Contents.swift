import UIKit
//mark:使用arc4random()、arc4random_uniform()取得随机数

//arc4random()%x、arc4random_uniform（x）都是获取0~x-1之间的随机数
//1、使用 arc4random 函数求一个 1~x 的随机数（包括1和x）
var x = 100
let temp = Int(arc4random()%UInt32(x))+1

//2、使用 arc4random_uniform 函数求一个 1~x 的随机数（包括1和x)
let temp2 = Int(arc4random_uniform(UInt32(x)))+1
