//
//  DiceSetViewController.swift
//  Dice Roller
//
//  Created by Tony Tran on 12/6/21.
//
//
import Foundation
import UIKit

protocol DiceProtocol: AnyObject {
    func diceNum(_ numDice: Int)
    func diceMax(_ diceMax: Int)
    func filter(_ filterVal: Int)
}

class DiceSetViewController: UIViewController{

    @IBOutlet weak var numDice: UITextField!
    @IBOutlet weak var diceMax: UITextField!
    @IBOutlet weak var filterVal: UITextField!


    weak var delegate: DiceProtocol?
    var newNum:Int?{
        guard
            let inputNum=numDice.text,
            let newDice = Int(inputNum)
        else {
            return 1;

        }
        return newDice
    }
    var newMax:Int?{
        guard
            let inputMax = diceMax.text,
            let newMax = Int(inputMax)
        else{
        //placeholder sixsided dice
            return 6;
        }
        return newMax

    }

    var newFilter:Int?{
        guard
            let inputFilter = filterVal.text,
            let newFilter = Int(inputFilter)
        else{
            return 0;
        }
        return newFilter
    }

    @IBAction func dismiss(_ sender: Any) {
        guard let num = newNum else {
            return
        }
        guard let max = newMax else {
            return
        }
        guard let fil = newFilter else {
            return
        }
        
        delegate?.diceNum(num)
        delegate?.diceMax(max)
        delegate?.filter(fil)

        self.dismiss(animated: true, completion: nil)
    }

}
