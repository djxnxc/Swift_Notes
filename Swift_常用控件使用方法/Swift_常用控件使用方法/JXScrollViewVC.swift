//
//  JXScrollViewVC.swift
//  Swift_常用控件使用方法
//
//  Created by 邓家祥 on 2019/7/5.
//  Copyright © 2019 JX. All rights reserved.
//

import UIKit

class JXScrollViewVC: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        scrollView.backgroundColor = .red
        let imageView = UIImageView(image: UIImage(named: "gxhk_zm"))
        scrollView.contentSize = imageView.bounds.size
        scrollView.addSubview(imageView)
        self.view.addSubview(scrollView)
        scrollView.minimumZoomScale = 0.5
        scrollView.maximumZoomScale = 4
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        for subView in scrollView.subviews {
            if subView.isKind(of: UIImageView.self){
                return subView
            }
        }
        return nil
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
