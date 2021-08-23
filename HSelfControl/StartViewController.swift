//
//  StartViewController.swift
//  HSelfControl
//
//  Created by 신지훈 on 2021/08/16.
//

import UIKit

class StartViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var selfControlText: UITextField!
    @IBOutlet weak var numberofTimesText: UITextField!
    @IBOutlet weak var startDatePicker: UIDatePicker!
    @IBOutlet weak var SaveButton: UIButton!
    
    
    public var complation:((String, String, Date) -> Void)?
    public var complationDate: ((Date) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        selfControlText.delegate = self
        numberofTimesText.delegate = self
        startDatePicker.locale = Locale(identifier: "ko")
        

     
    }
    
    @IBAction func didTabStartButton(_ sender: Any) {
        if let controlText = selfControlText.text, controlText.isEmpty,
           let numberofTime = numberofTimesText.text, numberofTime.isEmpty {
            let targetDate = startDatePicker.date
        print(targetDate)
            complation?(controlText,numberofTime,targetDate)
            complationDate?(targetDate)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
