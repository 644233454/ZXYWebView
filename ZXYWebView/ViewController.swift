//
//  ViewController.swift
//  ZXYWebView
//
//  Created by 张小杨 on 2020/12/8.
//

import UIKit

class ViewController: UIViewController {

    lazy var btn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .blue
        btn.addTarget(self, action: #selector(goto), for: .touchUpInside)
        btn.frame  = CGRect(x: 100,y: 100,width: 100,height: 100)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(btn)
        
        NotificationCenter.default.post(name: NSNotification.Name("kMainControllerInitSuccessNotiKey"), object: nil)
        // Do any additional setup after loading the view.
    }
    @objc func goto() {
        print("111")
        
        let vc = ZXYWebViewController.init(with: "http://www.baidu.com", nativeTitle: "百度")
        
        
        self.navigationController?.pushViewController(vc, animated: true)
//        let nav = UINavigationController.init(rootViewController: self)
//        let controller = ZXYLocalWebViewController()
//        nav.navigationController?.pushViewController(controller, animated: true)
        
    }


}

