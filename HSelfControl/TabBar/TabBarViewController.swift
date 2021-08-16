//
//  TabBarViewController.swift
//  HSelfControl
//
//  Created by 신지훈 on 2021/08/16.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.selectedIndex = 1
        setUPMiddleButton()
        
        
    }
    func setUPMiddleButton() {
        let middlebutton = UIButton(frame: CGRect(x: (self.view.bounds.width/2)-25,
                                                  y: -20,width: 60, height: 60))
        middlebutton.setBackgroundImage(UIImage(named: "home2"), for: .normal)
        middlebutton.layer.shadowOpacity = 0.1
        middlebutton.layer.shadowOffset = CGSize(width: 4, height: 4)
        
        self.tabBar.addSubview(middlebutton)
        middlebutton.addTarget(self, action: #selector(homeButtonAction), for: .touchUpInside)
    }
    @objc func homeButtonAction(sender: UIButton) {
        self.selectedIndex = 1
    }
 
}
