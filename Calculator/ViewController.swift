//
//  ViewController.swift
//  Calculator
//
//  Created by Carlos Caro on 2019-08-05.
//  Copyright © 2019 Carlos Caro. All rights reserved.
//

import UIKit

enum modes {
    case not_set
    case addition
    case substraction
    case multiplication
    case division
}

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var savedNum:Int = 0
    var labelString:String = "0"
    var currentMode:modes = .not_set
    var lastButtonWasMode:Bool = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressPlus(_ sender: Any) {
        changeModes(newMode: .addition)
        
    }
    
    
    @IBAction func didPressMinus(_ sender: Any) {
        changeModes(newMode: .substraction)
        
    }
    
    
    @IBAction func didPressMultiplication(_ sender: Any) {
        changeModes(newMode: .multiplication)
    }
    
    
    @IBAction func didPressDivision(_ sender: Any) {
        changeModes(newMode: .division)
    }
    
    @IBAction func didPressClear(_ sender: Any) {
        labelString = "0"
        currentMode = .not_set
        savedNum = 0
        label.text = "0"
        lastButtonWasMode = false
    }
    

    @IBAction func didPressEqual(_ sender: Any) {
        if (savedNum == 0) {
            return
        }
        
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        
        if (currentMode == .addition) {
            savedNum += labelInt
            label.text = "\(savedNum)"
        } else if (currentMode == .substraction) {
            savedNum -= labelInt
            label.text = "\(savedNum)"
        } else if (currentMode == .multiplication) {
            savedNum *= labelInt
            label.text = "\(savedNum)"
        } else if (currentMode == .division) {
            savedNum /= labelInt
            label.text = "\(savedNum)"
        }
        
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        let stringValue:String? = sender.titleLabel?.text
        
        if (lastButtonWasMode) {
            lastButtonWasMode = false
            labelString = "0"
        }
        
        labelString = labelString.appending(stringValue!)
        updateText()
    }
    
    func updateText(){
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        
        if (currentMode == .not_set){
            savedNum = labelInt
        }
        
        
        label.text = "\(labelInt)"
    }
    
    func changeModes(newMode:modes){
        if (savedNum == 0) {
            return
        }
        
        currentMode = newMode
        lastButtonWasMode = true
    }


}

