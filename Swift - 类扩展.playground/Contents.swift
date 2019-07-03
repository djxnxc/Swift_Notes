//类扩展，新增实例方法、类方法，可以新增计算属性，但是不能新增存储属性,
extension String{
    //var des:String?
    //计算属性
    var des:String{
        return "计算属性"
    }
    //实例方法
    func test(){
        print("类扩展新增实例方法")
    }
    //类方法
    static func testA(){
        print("类扩展新增类方法")
    }
    //定义下标脚本
    subscript(start:Int, length:Int) -> String{
        get{
            let index1 = self.index(self.startIndex, offsetBy: start)
            let index2 = self.index(index1, offsetBy: length)
            return String(self[index1..<index2])
        }
        set{
            let tmp = self
            var head = ""
            var foot = ""
            for (index,item) in tmp.enumerated(){
                if index < start {
                    head += "\(item)"
                }
                if index >= start + length {
                    foot += "\(item)"
                }
                self = head + newValue + foot
            }
        }
    }
}
var str = "test1234567890"
str.test()
String.testA()
print("\(str[4,6])")
str[4,6] = "++++++"
print("\(str)")
