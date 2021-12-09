//
//  ViewController.swift
//  Dice Roller
//
//  Created by Tony Tran on 12/5/21.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Main"
    }
    
    func rand(max:Int) -> Int{
        return Int.random(in: 1...max)
    }

    @IBAction func d4(_ sender: Any) {
        d4value.isHidden = false
        d4value.text = "\(rand(max: 4))"
    }
    @IBOutlet weak var d4value: UILabel!
    
    
    
    @IBAction func d6(_ sender: Any) {
        d6value.isHidden = false
        d6value.text = "\(rand(max:6))"
    }
    @IBOutlet weak var d6value: UILabel!
    
    
}

