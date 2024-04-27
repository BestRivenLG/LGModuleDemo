//
//  ViewController.swift
//  LGModuleDemo
//
//  Created by liangang zhan on 2024/4/27.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
            
//        let aview = UIView()
//        aview.backgroundColor = .yellow
//        view.addSubview(aview)
//        aview.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.top.equalTo(100)
//        }
//        aview.layer.cornerRadius = 5
//        aview.layer.masksToBounds = true
        
        let btn = UIButton()
        btn.lg.touchArea(50.0)
        btn.titleLabel?.numberOfLines = 0
        btn.titleLabel?.textAlignment = .center
        btn.setTitle("你好啊十大法师地方", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.setImage(UIImage(named: "Slice 38"), for: .normal)
//        btn.siteStyle(.imageOnRight, space:25)
        
        btn.lg.siteStyle(.imageOnRight, space:30)

        view.addSubview(btn)
        btn.snp.makeConstraints { make in
//            make.edges.equalTo(UIEdgeInsets(top: 40, left: 15, bottom: 15, right: 15))
            make.centerX.equalToSuperview()
            make.top.equalTo(100)
//            make.width.equalTo(80)
        }
    }
    
    

}

