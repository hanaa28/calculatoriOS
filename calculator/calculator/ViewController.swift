//
//  ViewController.swift
//  calculator
//
//  Created by Sohila on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {
    //outlet
    @IBOutlet weak var showeq: UILabel!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var fouf: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var multiple: UIButton!
    @IBOutlet weak var subtract: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var result: UILabel!
    
    //variable
    var arrayOfEq : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func getNine(_ sender: Any) {
        arrayOfEq.append("9")
        showeq.text =  arrayOfEq   }
    
    @IBAction func getEight(_ sender: Any) {
        arrayOfEq.append("8")
        showeq.text =  arrayOfEq
    }
    
    @IBAction func getSeven(_ sender: Any) {
        arrayOfEq.append("7")
        showeq.text =  arrayOfEq
    }
    
    @IBAction func getSix(_ sender: Any) {
        arrayOfEq.append("6")
        showeq.text =  arrayOfEq
    }
    
    @IBAction func getFive(_ sender: Any) {
        arrayOfEq.append("5")
        showeq.text =  arrayOfEq      }
    
    @IBAction func getFour(_ sender: Any) {
        arrayOfEq.append("4")
        showeq.text =  arrayOfEq
    }
    
    @IBAction func getThree(_ sender: Any) {
        arrayOfEq.append("3")
        showeq.text =  arrayOfEq
    }
    
    @IBAction func getTwo(_ sender: Any) {
        arrayOfEq.append("2")
        showeq.text =  arrayOfEq
    }
    
    @IBAction func getOne(_ sender: Any) {
        arrayOfEq.append("1")
        showeq.text =  arrayOfEq
    }
    
    
    @IBAction func getZero(_ sender: Any) {
        arrayOfEq.append("0")
        showeq.text =  arrayOfEq      }
    
    @IBAction func getDot(_ sender: Any) {
        if (arrayOfEq.last != "."){
            arrayOfEq.append(".")
            showeq.text =  arrayOfEq
        }
    }
    
    @IBAction func getDivide(_ sender: Any) {
        if (arrayOfEq.last != " "){
            arrayOfEq.append(" / ")
            showeq.text =  arrayOfEq
        }
    }
    
    @IBAction func getMultiple(_ sender: Any) {
        if (arrayOfEq.last != " "){
            arrayOfEq.append(" * ")
            showeq.text =  arrayOfEq
        }
    }
    
    @IBAction func getSubtract(_ sender: Any) {
        if (arrayOfEq.last != " "){
            arrayOfEq.append(" - ")
            
            showeq.text =  arrayOfEq
        }
    }
    
    @IBAction func geyPlus(_ sender: Any) {
        if (arrayOfEq.last != " "){
            arrayOfEq.append(" + ")
            showeq.text =  arrayOfEq
        }
    }
    
    @IBAction func getEqual(_ sender: Any) {
        print("hellllo")
        if(arrayOfEq.last != " " && arrayOfEq != "."){
            var arrayOfStrig = arrayOfEq.split(separator: " ")
            var finalarray = [String]()
            for i in arrayOfStrig{
                finalarray.append("\(i)")
                
            }
          finalarray = domultiple(finalarray : &finalarray)
            print("final arra \(finalarray)")
            finalarray = doplusandsub(finalarray: &finalarray)
            result.text = finalarray.last
            
            
        }
        
    }
    
    @IBAction func getClear(_ sender: Any) {
        showeq.text = ""
        result.text = "0"
        arrayOfEq = ""
    }
    func domultiple ( finalarray :inout [String]) -> [String]{
        var mul : Double = 0.0
        var i = 0
        while i < finalarray.count{
            if (finalarray[i] == "*"){
                mul = (Double(finalarray[i - 1]) ?? 0.0) * (Double(finalarray[i + 1]) ?? 0.0)
                print(mul)
                finalarray.insert(String(mul), at: i - 1)
                finalarray.remove(at: i)
                finalarray.remove(at: i)
                finalarray.remove(at: i)
                i -= 1
                
            }
            if (finalarray[i] == "/"){
                mul = (Double(finalarray[i - 1]) ?? 0.0) / (Double(finalarray[i + 1]) ?? 0.0)
                finalarray.insert(String(mul), at: i - 1)
                finalarray.remove(at: i)
                finalarray.remove(at: i)
                finalarray.remove(at: i)
                i -= 1
                
            }
            i += 1
            
        }
        return finalarray
    }
    func doplusandsub ( finalarray :inout [String]) -> [String]{
        var mul : Double = 0.0
        var i = 0
        while i < finalarray.count{
            if (finalarray[i] == "+"){
                mul = (Double(finalarray[i - 1]) ?? 0.0) + (Double(finalarray[i + 1]) ?? 0.0)
                print(mul)
                finalarray.insert(String(mul), at: i - 1)
                finalarray.remove(at: i)
                finalarray.remove(at: i)
                finalarray.remove(at: i)
                i -= 1
                
            }
            if (finalarray[i] == "-"){
                mul = (Double(finalarray[i - 1]) ?? 0.0) - (Double(finalarray[i + 1]) ?? 0.0)
                finalarray.insert(String(mul), at: i - 1)
                finalarray.remove(at: i)
                finalarray.remove(at: i)
                finalarray.remove(at: i)
                i -= 1
                
            }
            i += 1
            
        }
        return finalarray
    }
    
    
}
