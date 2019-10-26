

import UIKit
//kit แปลว่าชุดเครื่องมือ
// UI แปลว่า User useser interf
//struct is pass by value คือ เหมือนก๊อปปี้แยกกันคนละอัน แก้อันใดกับอันหนึ่งไม่มีผลกับอีกอัน
//class is Pass by Reference คือ เหมือนก๊อปปี้แยกกันคนละอัน แก้อันใดกับอันหนึ่งจะมีผลกับอีกอัน
struct CalculateBrain {
//    var bmi: Float = 0.0 //1 Value เก็บตัวเดียวนะ
    
    var bmiStruct: BMI? //3 value เก็บ 3 ตัวเป็นชุดbmi? (value, advice, color )อะไร
    //เครื่องหมาย? คือตัวเเปร optional คือ ตัวเลือกจะมีค่าหรือไม่มีค่าก็เป็นได้
    //ดังนั้นอาจจะไม่มีค่าก็ได้
    
    func getBMIValue() -> String {
        //let bmiTo1DecimalPlace  = String(format: "%.1f", bmi )
        let bmiTo1DecimalPlace  = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String{
        return bmiStruct?.advice ?? "No Advice"
        //if แบบย่อ
        //ตัวเเปรที่ต้องการดูว่ามีค่า ??
    }
    
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    mutating func calculateBMI(height:Float, weight:Float)
    {
//        bmi ตัวที่ใช้นี้ไม่มี var หรือ let นำหน้า คือตัวที่เป็น global var
        // ส่วน weight กับ height คือตัวที่ฟังก์ชันรับค่ามาในชื่อตัวนั้นๆgป็น Local var
//        bmi = weight / (height * height)
        
        let bmiValueLocal = weight/(height*height)
        
        if bmiValueLocal < 18.5{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more ples!",color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)) //ส่งค่าไปเก้บ
        }else if bmiValueLocal < 24.9{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) )
        }
    }
}
