//
//  ViewController.swift
//  calculator
//
//  Created by 20141105073 on 16/6/22.
//  Copyright © 2016年 20141105073. All rights reserved.
//
// evaluation 求值

import UIKit

class ViewController: UIViewController {

    var x:Double=0.0
    var y:Double=0.0
    var b_chushizhi:Bool=false
    var b_fuzhi:Bool=false
    var b_dot:Bool=false
    var result:Double=0.0
    var flag=0
    
    
    
    @IBOutlet weak var pm: UITextField!
    
    func click(number:String){
        if(b_chushizhi==false)
        {
            pm.text = number
            b_chushizhi=true
        }
        else
        {
            pm.text=pm.text!+number
        }
        
    }
    
    
    @IBAction func one(sender: AnyObject) {
        click("1")
    }
    @IBAction func two(sender: AnyObject) {
        click("2")
    }
    @IBAction func three(sender: AnyObject) {
        click("3")
    }
    @IBAction func four(sender: AnyObject) {
        click("4")
    }
    @IBAction func five(sender: AnyObject) {
        click("5")
    }
    @IBAction func six(sender: AnyObject) {
        click("6")
    }
    @IBAction func seven(sender: AnyObject) {
        click("7")
    }
    @IBAction func eight(sender: AnyObject) {
        click("8")
    }
    @IBAction func nine(sender: AnyObject) {
        click("9")
    }
    @IBAction func zero(sender: AnyObject) {
        click("0")
    }
    @IBAction func multiply(sender: AnyObject) {
        ys("multiply")
    }
    @IBAction func subtract(sender: AnyObject) {
        ys("subtract")
    }
    @IBAction func add(sender: AnyObject) {
        ys("add")
    }
    @IBAction func divide(sender: AnyObject) {
        ys("divide")
    }
    @IBAction func dot(sender: AnyObject) {
        if (b_dot == false){
            pm.text=pm.text!+"."
            b_dot=true
        }
        else{
            pm.text=pm.text!+""
        }
           }
    
    func evaluation(){
        if (b_fuzhi==false)
        {
            x=(pm.text! as NSString).doubleValue
            b_fuzhi=true
        }
        else
        {
            y=(pm.text! as NSString).doubleValue
            b_fuzhi=true
        }
        
    }
    
    var symbol:String=""
    func ys(fu:String)
    {
        evaluation()
        symbol=fu
        b_chushizhi=false
    }

    @IBAction func equal(sender: AnyObject) {
        if(b_chushizhi==true){
            y==0
        }
        evaluation()
        if(symbol=="multiply")
        {
            result = x * y
        }
        else if(symbol=="subtract")
        {
            result = x - y
        }
        else if(symbol=="add")
        {
            result = x + y
            
        }
        else if(symbol=="divide")
        {
            result = x / y
        }
        else
        {
            result = x
        }
            b_fuzhi=false
            b_chushizhi=false
            pm.text="\(result)"
    }
    func clear(sender: AnyObject) {
        result=0.0
        x=0.0
        y=0.0
        b_fuzhi=false
        b_chushizhi=false
        b_dot=false
        pm.text="0.0"
    }
       func minus(sender: AnyObject) {
        result=(Double)(pm.text!)!
        result=(-result)
        pm.text="\(result)"
       /*x=(pm.text! as NSString).doubleValue
        result=x *-1
        pm.text="\(result)"*/
     /* var z:Double( pm.text! as NSString).doubleValue
        if (z>0)
        {
            pm.text="-" + pm.text!
            
        }
        else{
            z=abs(z)
            var a:Int=(Int)(z)
            var b:Double=(Double)(z)
            if (b==z){
                pm.text="\(a)"
            }
            else
            {
                pm.text="\(z)"
            }
        }*/
 
        }
    func percent(sender: AnyObject) {
        x=(pm.text! as NSString).doubleValue
        result=x/100
        pm.text="\(result)"
    }
    
    @IBAction func tuige(sender: AnyObject) {
        var str = pm.text!
        if (str != ""){
        str.removeAtIndex(str.endIndex.predecessor())
        pm.text=str
        }
        else{
         pm.text="0"
        }
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func ActBtnC(sender: AnyObject) {
    }

}