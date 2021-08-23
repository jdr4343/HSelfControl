//
//  HomeViewController.swift
//  HSelfControl
//
//  Created by 신지훈 on 2021/08/16.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var changeImage: UIImageView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
            date()
        
    
    }
    func date() {
        let today = Date()
        let formatter = DateFormatter()
        var modigiedData = Calendar.current.date(byAdding: .day, value: 1, to: today)!
        
    }
  
    
    
    
    
}



