//
//  ViewController.swift
//  兔兔擇主人條件
//
//  Created by 蔡佳穎 on 2021/5/6.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var whoTextField: UITextField!
    @IBOutlet weak var loveSwitch: UISwitch!
    @IBOutlet weak var strengthSegmentedControl: UISegmentedControl!
    @IBOutlet weak var frequencySlider: UISlider!
    @IBOutlet weak var touchNumberLabel: UILabel!
    @IBOutlet weak var forgotBtn: UIButton!
    @IBOutlet weak var onceBtn: UIButton!
    @IBOutlet weak var manyBtn: UIButton!
    
    @IBOutlet weak var watchImageView: UIImageView!
    @IBOutlet weak var loveView: UIView!
    @IBOutlet weak var hateView: UIView!
    
    var snakeFrequency = ""
    var whoText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hateView.frame = CGRect(x: 37, y: 485, width: 341, height: 400)
        loveView.isHidden = true
        hateView.isHidden = true
        watchImageView.isHidden = false
    }

    @IBAction func closeKeyboard(_ sender: UITextField) {
        whoText = whoTextField.text!
    }
    
    @IBAction func getTouchNumber(_ sender: UISlider) {
        touchNumberLabel.text = "\(Int(sender.value))"
        print("\(Int(sender.value))")
    }
    
    @IBAction func getSnakeFrequencyValue(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            snakeFrequency = "unacceptable"
        case 1:
            snakeFrequency = "ok"
        case 2:
            snakeFrequency = "ok"
        default:
            break
        }
        print("\(snakeFrequency)")
    }
    
    @IBAction func test(_ sender: UIButton) {
        
        let whoText = whoTextField.text!
 
        if whoText.contains("媽") || whoText.contains("佳") || whoText.contains("mom"), loveSwitch.isOn, strengthSegmentedControl.selectedSegmentIndex == 0, frequencySlider.value >= 2, snakeFrequency == "ok" {
            loveView.isHidden = false
            hateView.isHidden = true
            watchImageView.isHidden = true
        } else {
            hateView.isHidden = false
            loveView.isHidden = true
            watchImageView.isHidden = true
        }
    }
    @IBAction func clear(_ sender: UIButton) {
        
        whoTextField.text = ""
        loveSwitch.isOn = false
        strengthSegmentedControl.selectedSegmentIndex = 0
        frequencySlider.value = 0
        touchNumberLabel.text = "0"
        loveView.isHidden = true
        hateView.isHidden = true
        watchImageView.isHidden = false
    }
}

