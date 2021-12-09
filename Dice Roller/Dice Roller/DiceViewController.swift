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
        
        var diceTotalval = 0
        //testing prints
        print("Number of dice: \(diceNum)")
        print("D\(diceMax)")
        print("filter by:\(filter)")
        
        for _ in 1...diceNum{
            let newval = Int.random(in: 1...diceMax)
            diceRolled.append(newval)
            if newval > filter{
                dicePassed.append(newval)
                diceTotalval = diceTotalval + newval
            }
        }
        print(diceRolled)
        if dicePassed.isEmpty{
            print("No Dice!")
        }
        else{
            //print(dicePassed)
            
        }
        
        //data for display purposes
        let diceCount = diceNum
        let success = dicePassed.count
        let total = diceTotalval
        let average = Double(total)/Double(success)
        print(Double(diceCount))
        print(Double(success))
        let percent1 = Double(success)/Double(diceCount)
        let percent2 = percent1 * 100
        
        //let percent = Double(success)/Double(total)
        NumDiceDisplay.text = "Number of Dice: \(diceCount)"
        SuccessDisplay.text = "Successes: \(success)"
        TotalDisplay.text = "Total value: \(total)"
        PercentDisplay.text = "Success percent: \(percent2)"
        
        AverageDisplay.text = "Average value: \(average)"
        
        
        NumDiceDisplay.isHidden = false
        SuccessDisplay.isHidden = false
        TotalDisplay.isHidden = false
        AverageDisplay.isHidden = false
        PercentDisplay.isHidden = false
    }
    // here we want to process and return the data from the dice
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DiceSetViewController {
            destination.delegate = self
        }
    }
    
    @IBOutlet weak var NumDiceDisplay: UILabel!
    
    
    @IBOutlet weak var SuccessDisplay: UILabel!
    @IBOutlet weak var TotalDisplay: UILabel!
    
    @IBOutlet weak var PercentDisplay: UILabel!
    
    @IBOutlet weak var AverageDisplay: UILabel!
    
}
