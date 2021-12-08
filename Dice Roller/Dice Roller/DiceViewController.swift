//
//  DiceViewController.swift
//  Dice Roller
//
//  Created by Tony Tran on 12/6/21.
//

import Foundation
import UIKit


class DiceViewController: UIViewController, DiceProtocol{
    func diceNum(_ numDice: Int) {
        self.diceNum = numDice
        print("WORKS")
    }
    
    func diceMax(_ diceMax: Int) {
        self.diceMax = diceMax
    }
    
    func filter(_ filterVal: Int) {
        self.filter = filterVal
    }
    
    var diceNum: Int = 3
    var diceMax: Int = 6
    var filter:Int = 3
    
    
    @IBAction func Roll(_ sender: Any) {
        var dicePassed:Array<Int> = Array()
        var diceRolled:Array<Int> = Array()
        for _ in 1...diceNum{
            let newval = Int.random(in: 1...diceMax)
            diceRolled.append(newval)
            if newval > filter{
                dicePassed.append(newval)
            }
        }
        print(diceRolled)
        if dicePassed.isEmpty{
            print("No Dice!")
        }
        else{
            print(dicePassed)
        }
        let string = "\(dicePassed)"
        Output.text = string
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DiceSetViewController {
            destination.delegate = self
        }
    }
    
    @IBOutlet weak var Output: UILabel!
}
