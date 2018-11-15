//
//  ViewController.swift
//  caculater
//
//  Created by TAO on 2018/11/9.
//  Copyright © 2018 TAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp :Double = 0;
    var flag :Double = 0;
    var control_negative:Double = 0;
    var calFlag :Double = 0;
    
    @IBOutlet weak var caculaterDisplay: UITextField!
    
    @IBAction func Botton1(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"1"
        }
        else{
            caculaterDisplay.text = "1"
            
        }
        calFlag = 1
    }
    
    @IBAction func Botton2(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"2"
        }
        else{
            caculaterDisplay.text = "2"
            
        }
        calFlag = 1
    }
    
    @IBAction func Botton3(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"3"
        }
        else{
            caculaterDisplay.text = "3"
            
        }
        calFlag = 1
    }
    
    @IBAction func Botton4(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"4"
        }
        else{
            caculaterDisplay.text = "4"
            
        }
        calFlag = 1

    }
    
    @IBAction func Botton5(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"5"
        }
        else{
            caculaterDisplay.text = "5"
            
        }
        calFlag = 1
    }
    
    @IBAction func Botton6(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"6"
        }
        else{
            caculaterDisplay.text = "6"
            
        }
        calFlag = 1
    }
    
    @IBAction func Botton7(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"7"
        }
        else{
            caculaterDisplay.text = "7"
            
        }
        calFlag = 1
    }
    
    @IBAction func Botton8(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"8"
        }
        else{
            caculaterDisplay.text = "8"
            
        }
        calFlag = 1
    }
    
    @IBAction func Botton9(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"9"
        }
        else{
            caculaterDisplay.text = "9"
            
        }
        calFlag = 1
    }
    
    @IBAction func Botton0(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"0"
        }
        else{
            caculaterDisplay.text = "0"
            
        }
        calFlag = 1
    }
    
    @IBAction func Bottonadd(_ sender: Any) {
        if flag == 1{
            caculaterDisplay.text = "\(temp + Double(caculaterDisplay.text!)!)"
            
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 1
    }
    
    @IBAction func Bottonminus(_ sender: Any) {
        if flag == 2{
            caculaterDisplay.text = "\(temp - Double(caculaterDisplay.text!)!)"
            
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 2
    }
    
    @IBAction func Bottonplus(_ sender: Any) {
        if flag == 3{
            caculaterDisplay.text = "\(temp * Double(caculaterDisplay.text!)!)"
            
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 3
    }
    
    @IBAction func Bottondivide(_ sender: Any) {
        if flag == 4{
            caculaterDisplay.text = "\(temp / Double(caculaterDisplay.text!)!)"
            
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 4
    }
    
    @IBAction func Bottonper(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 5
    }
    
    @IBAction func Bottonclear(_ sender: Any) {
        caculaterDisplay.text = ""
        temp = 0
        flag = 0
        control_negative = 0
        calFlag = 0
    }
    
    @IBAction func Bottonback(_ sender: Any) {
         caculaterDisplay.text?.removeLast()
    }
    
    @IBAction func Bottonsquare(_ sender: Any) {
        temp =
            Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        flag = 6
    }
    
    @IBAction func Bottonnegative(_ sender: Any) {
        if control_negative == 0 {
            caculaterDisplay.text = "-" + caculaterDisplay.text!
            control_negative = 1
        }
        else {
            caculaterDisplay.text?.removeFirst()
            control_negative = 0
        }
    }
    
    @IBAction func Bottonpoint(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text!+"."
    }
    
    
    @IBAction func Buttonsinn(_ sender: Any) {
        temp =
            Double(caculaterDisplay.text!)!
        flag = 7
        calFlag = 2;
    }
    
    @IBAction func Buttoncoss(_ sender: Any) {
        temp =
            Double(caculaterDisplay.text!)!
        flag = 8
        calFlag = 2;
    }
    
    
    @IBAction func Buttontann(_ sender: Any) {
        temp =
            Double(caculaterDisplay.text!)!
        flag = 9
        calFlag = 2;
    }
    
    @IBAction func Buttonlogg(_ sender: Any) {
        temp =
            Double(caculaterDisplay.text!)!
        flag = 10
        calFlag = 2;
    }
    @IBAction func caculater(_ sender: Any) {
        if(flag == 1)
        {
            var sum :Double = 0
            sum = temp + Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
        }
        if(flag == 2)
        {
            var sum1 :Double = 0
            sum1 = temp - Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum1)"
        }
        if(flag == 3)
        {
            var sum2 :Double = 0
            sum2 = temp * Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum2)"
        }
        if(flag == 4)
        {
            var sum3 :Double = 0
            sum3 = temp / Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum3)"
        }
        if(flag == 5)
        {
            var sum4 :Double = 0
            sum4 = 0.01 * (temp)
            caculaterDisplay.text = "\(sum4)"
        }
        if(flag == 6)
        {
            var sum5 :Double = 0
            sum5 = pow(temp,Double(caculaterDisplay.text!)!)
            caculaterDisplay.text = "\(sum5)"
        }
        if(flag == 7)
        {
            var sum6 :Double = 0
            sum6 = sin(temp)
            caculaterDisplay.text = "\(sum6)"
        }
        if(flag == 8)
        {
            var sum7 :Double = 0
            sum7 = cos(temp)
            caculaterDisplay.text = "\(sum7)"
        }
        if(flag == 9)
        {
            var sum8 :Double = 0
            sum8 = tan(temp)
            caculaterDisplay.text = "\(sum8)"
        }
        if(flag == 10)
        {
            var sum9 :Double = 0
            sum9 = log(temp)
            caculaterDisplay.text = "\(sum9)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

}
}
