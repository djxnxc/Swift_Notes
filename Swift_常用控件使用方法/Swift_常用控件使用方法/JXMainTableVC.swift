//
//  JXMainTableVC.swift
//  Swift_常用控件使用方法
//
//  Created by 邓家祥 on 2019/7/4.
//  Copyright © 2019 JX. All rights reserved.
//

import UIKit

class JXMainTableVC: UITableViewController {
    let listData:[String] = ["UILabel标签","UIButton标签","UIScrollView控件","UIStepper控件","UIDatePickerl控件"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = .init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mainCellID")
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listData.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCellID", for: indexPath)
        cell.textLabel?.text = self.listData[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            let labVC = JXLabel()
            labVC.title = self.listData[indexPath.row]
            self.navigationController?.pushViewController(labVC, animated: true)
        case 1:
            let buttonVC = JXButton()
            buttonVC.title = self.listData[indexPath.row]
            self.navigationController?.pushViewController(buttonVC, animated: true)
        case 2:
            let scrollViewVC = JXScrollViewVC()
            scrollViewVC.title = self.listData[indexPath.row]
            self.navigationController?.pushViewController(scrollViewVC, animated: true)
        case 3:
            let stepperVC = JXStepper()
            stepperVC.title = self.listData[indexPath.row]
            self.navigationController?.pushViewController(stepperVC, animated: true)
        case 4:
            let datePickerVC = JXDatePicker()
            datePickerVC.title = self.listData[indexPath.row]
            self.navigationController?.pushViewController(datePickerVC, animated: true)
        default:
            break
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
