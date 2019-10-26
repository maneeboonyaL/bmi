//
//  ResuitViewController.swift
//  ios 13610328 week10 project2
//
//  Created by ZNEB on 19/10/2562 BE.
//  Copyright © 2562 Chutikarn. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePresent(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
//    }end func re
    

}
}
