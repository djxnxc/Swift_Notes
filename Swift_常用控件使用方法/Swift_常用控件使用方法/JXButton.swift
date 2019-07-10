//
//  JXButton.swift
//  Swift_常用控件使用方法
//
//  Created by 邓家祥 on 2019/7/4.
//  Copyright © 2019 JX. All rights reserved.
//

import UIKit

class JXButton: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        /*
         UIButtonType.system：前面不带图标，默认文字颜色为蓝色，有触摸时的高亮效果
         UIButtonType.custom：定制按钮，前面不带图标，默认文字颜色为白色，无触摸时的高亮效果
         UIButtonType.contactAdd：前面带“+”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
         UIButtonType.detailDisclosure：前面带“!”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
         UIButtonType.infoDark：为感叹号“!”圆形按钮
         UIButtonType.infoLight：为感叹号“!”圆形按钮
         */
        //1、创建按钮
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 50, y: 200, width: 200, height: 60)
        btn.setTitle("JXButton", for: .normal)
        self.view.addSubview(btn)
        //2、按钮的文字设置
        btn.isHighlighted = true
        btn.setTitle("高亮状态", for: .highlighted)
        btn.setTitleColor(.green, for: .highlighted)
        
        btn.setTitle("禁用状态", for: .disabled)
        
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
