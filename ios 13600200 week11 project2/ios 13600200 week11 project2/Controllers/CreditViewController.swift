//
//  CreditViewController.swift
//  ios 13610328 week10 project2
//
//  Created by ZNEB on 19/10/2562 BE.
//  Copyright © 2562 Chutikarn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {

    var fullname = "fullname"
    
    
    @IBOutlet weak var fullnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullnameLabel.text = fullname
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPrassed(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
