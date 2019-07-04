//
//  JXLabel.swift
//  Swift_常用控件使用方法
//
//  Created by 邓家祥 on 2019/7/4.
//  Copyright © 2019 JX. All rights reserved.
//

import UIKit

class JXLabel: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        //1、标签创建
        let lab:UILabel = .init(frame: CGRect(x: 50, y: 150, width: 200, height: 60))
        lab.text = "JXLabel"
        //2、背景颜色和文字颜色设置
        lab.textColor = .gray//文字颜色
        lab.backgroundColor = .green//lab背景
        //3、文字对齐方式
        lab.textAlignment = .center//文字居中
        //4、文字阴影设置
//        lab.shadowColor = .lightGray//设置阴影颜色
//        lab.shadowOffset = .init(width: 1.5, height: 15)//设置阴影偏移量 width左右偏移  height上下偏移
        //5、字体的设置
        lab.font = UIFont(name: "Menlo", size: 16)
        //6、文字过长时的省略方式
        /*
         .byTruncatingHead //隐藏头部并显示省略号
         .byTruncatingMiddle  //隐藏中间部分并显示省略号
         .byTruncatingTail  //隐藏尾部并显示省略号
         .byClipping  //截去多余部分也不显示省略号
         */
        lab.lineBreakMode = .byTruncatingHead //隐藏头部并显示省略号
        lab.text = "QWERTYUIOPASDFGHJKLZXCVBNM1234567890"
        lab.font = .systemFont(ofSize: 30)
        //7、当文字超出label宽度时字体自动调整字体大小
        lab.adjustsFontSizeToFitWidth = true
        //8、使标签可以显示多行文字
        lab.numberOfLines = 2
        //9、设置文本高亮
        lab.isHighlighted = true
        //10、设置文本高亮颜色
        lab.highlightedTextColor = .red
        //11、设置label中指定位置字符串字体
        let attributeString = NSMutableAttributedString(string: "Hello,Swift!")
        attributeString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "HelveticaNeue-Bold", size: 40) as Any, range: NSMakeRange(0, 5))
        lab.attributedText = attributeString
        self.view.addSubview(lab)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
