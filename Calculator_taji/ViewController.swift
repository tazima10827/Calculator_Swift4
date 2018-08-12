//
//  ViewController.swift
//  Calculator_taji
//
//  Created by 田嶋智洋 on 2018/08/12.
//  Copyright © 2018 Motohiro Tajima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label1: UILabel!   //ラベル
    //number1,2 は変数。
    //IntやDoubleは型。Int整数　 Double小数点と変数
    var number1:Int = 0
    var number2:Int = 0
    
    var ope: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func S0() {   //0
        number1 = number1*10 + 0
        label1.text = String(number1)
        
    }
    
    @IBAction func S1() {   //1
        number1 = number1*10 + 1
        label1.text = String(number1)
    }
    
    @IBAction func S2() {   //2
        number1 = number1*10 + 2
        label1.text = String(number1)
    }
    
    @IBAction func S3() {   //3
        number1 = number1*10 + 3
        label1.text = String(number1)
    }
    
    @IBAction func S4() {   //4
        number1 = number1*10 + 4
        label1.text = String(number1)
    }
    
    @IBAction func S5() {   //5
        number1 = number1*10 + 5
        label1.text = String(number1)
    }
    
    @IBAction func S6() {   //6
        number1 = number1*10 + 6
        label1.text = String(number1)
    }
    
    @IBAction func S7() {   //7
        number1 = number1*10 + 7
        label1.text = String(number1)
    }
    
    @IBAction func S8() {   //8
        number1 = number1*10 + 8
        label1.text = String(number1)
    }
    
    @IBAction func S9() {   //9
        number1 = number1*10 + 9
        label1.text = String(number1)
    }
    @IBAction func plus1() {      //足し算
        if ope==1 {
            number1=number2+number1
            label1.text = String(number1)
        }
        number2 = number1
        number1 = 0
        ope = 1
    }
    //number1=number2-number1に変更 String(number1)も変更
    @IBAction func mainasu1() {   //引き算
        if ope==2 {
            number1=number2-number1
            label1.text = String(number1)
        }
        number2=number1
        number1=0
        ope=2
    }
    
    @IBAction func kakeru1() {    //掛け算
        if ope==3 {
            number1=number2*number1
            label1.text = String(number1)
        }
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func waru1() {      //割り算
        if ope==4 {
            number1=number2/number1
            label1.text = String(number1)
        }
        number2 = number1
        number1 = 0
        ope = 4
    }
    @IBAction func equal1() {   //イコール
        if ope == 1 {
            number1 = number1+number2
            label1.text = String(number1)
        }else if ope == 2{
            number1 = number2-number1
            label1.text = String(number1)
        }else if ope == 3{
            number1 = number2*number1
            label1.text = String(number1)
        }else if ope == 4{
            number1 = number2/number1
            label1.text = String(number1)
        }
        
    }
    
    @IBAction func clear1() {   //クリア（C)
        number1 = 0
        number2 = 0
        ope = 0
        label1.text = String(0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
