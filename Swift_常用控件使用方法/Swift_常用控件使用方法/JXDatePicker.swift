//
//  JXDatePicker.swift
//  Swift_常用控件使用方法
//
//  Created by 邓家祥 on 2019/7/10.
//  Copyright © 2019 JX. All rights reserved.
//

import UIKit

class JXDatePicker: UIViewController {
    var dateBtn:UIButton!
    var timeBtn:UIButton!
    var totalTime:Int = 180
    var timer:Timer!
    var alertVC:UIAlertController!
    var timePicker:UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.dateBtn = UIButton(frame: CGRect(x: 100, y: 200, width: 250, height: 100))
        self.dateBtn.setTitle("日期选择器", for: .normal)
        self.dateBtn.backgroundColor = .red
        self.dateBtn.addTarget(self, action: #selector(dateSelect), for: .touchUpInside)
        self.timeBtn = UIButton(frame: CGRect(x: 100, y: 500, width: 250, height: 100))
        self.timeBtn.addTarget(self, action: #selector(timeCount), for: .touchUpInside)
        self.timeBtn.setTitle("时间倒计时", for: .normal)
        self.timeBtn.backgroundColor = .green
        self.view.addSubview(self.dateBtn)
        self.view.addSubview(self.timeBtn)
        // Do any additional setup after loading the view.
    }
    @objc func dateSelect(){
        let datePicker = UIDatePicker()
        datePicker.center = self.view.center
        datePicker.locale = Locale(identifier: "zh_CN")
        datePicker.addTarget(self, action: #selector(dateChanged), for: .valueChanged)
        self.view.addSubview(datePicker)
    }
   @objc func dateChanged(_ datePiceker:UIDatePicker){
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let alert = UIAlertController(title: "选择的时间是", message: "\(formatter.string(from: datePiceker.date))", preferredStyle: .alert)
        let action = UIAlertAction(title: "确定", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
            datePiceker.removeFromSuperview()
        }
    alert.addAction(action)
    self.present(alert, animated: true, completion: nil)
    
    }
    
    
    @objc func timeCount(){
        timePicker = UIDatePicker()
        timePicker.center = self.view.center
        timePicker.datePickerMode = .countDownTimer
        timePicker.countDownDuration = TimeInterval(totalTime)
        timePicker.addTarget(self, action: #selector(JXDatePicker.timeChanged), for: .valueChanged)
        self.view.addSubview(timePicker)
    }
    @objc func timeChanged(_ timePicker:UIDatePicker){
        totalTime = Int(timePicker.countDownDuration)
        alertVC = UIAlertController(title: "倒计时", message: "\(totalTime)", preferredStyle: .alert)
        let action = UIAlertAction(title: "结束", style: .default) { (action) in
            timePicker.removeFromSuperview()
            self.alertVC.dismiss(animated: false, completion: nil)
            self.timer.invalidate();
            self.timer = nil
        }
        alertVC.addAction(action)
        self.present(alertVC, animated: true, completion: nil)
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(1), target: self, selector: #selector(JXDatePicker.tickDown), userInfo: nil, repeats: true)
    }
    /**
     *计时器每秒触发事件
     **/
    @objc func tickDown()
    {
        alertVC.message = "倒计时开始，还有 \(totalTime) 秒..."
        // 将剩余时间减少1秒
        totalTime -= 1;
        // 修改UIDatePicker的剩余时间
        timePicker.countDownDuration = TimeInterval(totalTime);
        print(totalTime)
        // 如果剩余时间小于等于0
        if(totalTime <= 0)
        {
            // 取消定时器
            timer.invalidate();
            timer = nil
            // 启用UIDatePicker控件和按钮
            alertVC.message = "时间到！"
        }
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
