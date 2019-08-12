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
    
    var savedNum:Int = 0
    var labelString:String = "0"
    var currentMode:modes = .not_set
    //var lastButtonWasMode:Bool = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateText(){
        
    }
    
    func changeModes(newMode:modes){
        
        
    }


}

