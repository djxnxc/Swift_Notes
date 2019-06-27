
//字典<key,value>初始化四种方式
var temp = [String:String]()
var temp1 = Dictionary<String,String>()
var temp2: [String:String] = [:]
var temp3: Dictionary<String,Any> = [:]//key是字符串 value是任意类型
//不加as [String: Any]会报错  也可以这样声明var person:[String: Any]
var person = ["name":"张三","sex":"男","age":20,"heigh":"180cm","weight":"70kg"] as [String: Any]
var person1:[String: Any] = ["name":"李四","sex":"男","age":20,"heigh":"180cm","weight":"70kg"]

//增、删、改、查
//遍历key
for key in person.keys {
    print("key:\(key)")
}
//遍历value
for value in person.values {
    print("value:\(value)")
}
//遍历字典
for (key,value) in person {
    print("\(key)'s value is:\(value)")
}
//
let newPerson = person.filter { (key,value) -> Bool in
    return key.count > 3
}

person["weight"] = "75kg"//值修改
person
person["address"] = "上海市"//新增值
person
person.removeValue(forKey: "address")//删除值
person
person["weight"] = nil //值赋nil也可以删除值
person

person1.removeAll()//字典删除所有值，且删除空间
person.removeAll(keepingCapacity: true)//字典删除所有值，且保留空间

//字典拓展
//1、使用元组生成字典
let tuple = [("key1","value1"),("key2","value2"),("key3","value3")]
let dictonry = Dictionary(uniqueKeysWithValues: tuple)
print(dictonry)

//2、两个元素数量相同的数组生成字典
let keys = ["key1","key2"]
let values = ["value1","value2"]
let dict = Dictionary(uniqueKeysWithValues: zip(keys, values))
print("dict:\(dict)")

//3、分组 $0可以理解为元素
let names = ["Apple", "Pear", "Grape", "Peach"]
//将数组names的元素按照首字母分类
let dict1 = Dictionary(grouping: names) { $0.first! }
print(dict1) //["P": ["Pear", "Peach"], "G": ["Grape"], "A": ["Apple"]]

//4、统计一串字符里面的单词出现的次数
let tempStr = "one two three one five two four zero seven six six"
var wordCount:[String: Int] = [:]
let tempArr = tempStr.split(separator: " ")
for value in tempArr {
    wordCount["\(value)",default: 0] += 1
}
print("\(wordCount)")

