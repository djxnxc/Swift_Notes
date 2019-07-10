//
//  JXStepper.swift
//  Swift_常用控件使用方法
//
//  Created by 邓家祥 on 2019/7/5.
//  Copyright © 2019 JX. All rights reserved.
//

import UIKit

class JXStepper: UIViewController {
    var stepper:UIStepper!
    var lab:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        stepper = UIStepper()
        stepper.minimumValue = 0//设置最小值
        stepper.maximumValue = 10//设置最大值
        stepper.stepValue = 1//设置每次修改值
        stepper.wraps = true//设置是否可以长按连续改值
        stepper.autorepeat = true//设置是否可以循环
        stepper.tintColor = .red //设置步进器颜色
        stepper.addTarget(self, action:#selector(JXStepper.stepperValueIschanged), for: .valueChanged)
        stepper.center = self.view.center
        self.view.addSubview(stepper)
        lab = UILabel(frame: CGRect(x: stepper.center.x-100, y: stepper!.center.y-100, width: 200, height: 40))
        lab.text = String(describing: Int(stepper.value))
        lab.backgroundColor = .green
        self.view.addSubview(lab!)
        // Do any additional setup after loading the view.
    }
    @objc func stepperValueIschanged(){
        lab.text = String(describing: Int(stepper.value))
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
