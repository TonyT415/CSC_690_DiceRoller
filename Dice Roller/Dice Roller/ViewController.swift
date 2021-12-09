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
    
    @IBAction func d8(_ sender: Any) {
        d8value.isHidden = false
        d8value.text = "\(rand(max: 8))"
    }
    @IBOutlet weak var d8value: UILabel!
    
    @IBAction func d10(_ sender: Any) {
        d10value.isHidden = false
        d10value.text = "\(rand(max: 10))"
    }
    @IBOutlet weak var d10value: UILabel!
    
    
    @IBAction func d12(_ sender: Any) {
        d12value.isHidden = false
        d12value.text = "\(rand(max:12))"
    }
    @IBOutlet weak var d12value: UILabel!
    
}

