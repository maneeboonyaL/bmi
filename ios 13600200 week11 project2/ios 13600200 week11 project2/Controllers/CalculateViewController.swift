//
//  ViewController.swift
//  ios 13610328 week10 project2
//
//  Created by ZNEB on 19/10/2562 BE.
//  Copyright © 2562 Chutikarn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
//var weightLable = ""
//    global Variable คือตัวแปรตรงกลางที่ใช้ร่วมกันในคลาส ฟังก์ชันอื่นสามารถเรียกใช้ได้
//    var bmiValueCal = "0"
//    var calBrain = CalculateBrain()
    //    เรียกใช้ struct #1 ประกาศตัวแปรชนิด Struct
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var sliderHeight: UISlider!
    
    @IBOutlet weak var sliderWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
      
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(sender.value) //.value because UISlider have value in itselfs
//        print(String(format: "%.2f", sender.value))
//        print(String(format: "%.0f", sender.value))
//
        let height = String(format: "%.2f", sender.value)
         heightLabel.text = "\(height) M."
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value) //.value because UISlider have value in itselfs
//        print(String(format: "%.2f", sender.value))
//        print(String(format: "%.0f", sender.value))
        let weight = String(format: "%.0f", sender.value)
        
        
        weightLabel.text = "\(weight) Kg."
        
    }
    
    
    @IBAction func calculatePressed(_ sender: Any) {
        
        let heightFromUser = sliderHeight.value
        let weightFromUser = sliderWeight.value
        
        
        calculateBrain.calculateBMI (height: heightFromUser, weight: weightFromUser)
//        local variable
//        let bmi = weight / (height * height)
//        print("\(bmi)")
//        bmiValueCal = String(format: "%.1f", weight / (height * height))
        //self.performSegue(withIdentifier: "goToResult", sender: self)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.bmiValue = bmiValueCal
            //name of object.
            
            
            //            เรียกใช้ struct #3 เรียกใช้ Func getBMIValue()
//            ส่งกลับมาเป็น string ซึ่งเป็นชนิดเดียวกับที่ .bmiValue ต้องการ
            //            รู้ว่าตัวเดีบวกันด้วยชื่อcalculateBrain
            
            destinationVC.bmiValue = calculateBrain.getBMIValue() //bmiValue = 0.0 อหาร
            destinationVC.advice = calculateBrain.getAdvice()
            //destinationVC = ResultViewController พิมพ์เขียว
            
            destinationVC.color = calculateBrain.getColor()
//            ชื่อ object.ชื่อตัวแปร = ค่าที่ต้ิงการ set ให้
        } //end if1
        if segue.identifier == "goToCredit"{
            let CreditVc = segue.destination as! CreditViewController
            CreditVc.fullname = "Maneeboonya L."
        }//end if2
    }//end func prepare

}//end class

