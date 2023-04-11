//
//  BMIInfoContoller.swift
//  BMIApplication
//
//  Created by Anumula,Anjith Kumar on 4/10/23.
//

import UIKit

class BMIInfoContoller: UIViewController {

    
    @IBOutlet weak var BMILabel: UILabel!
    
    var calculateBMI = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = BMILabel.text!+String((calculateBMI*100).rounded()/100)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "animationSegue"{
            var destination = segue.destination as! AnimationViewController
            destination.BMIcategory = calculateBMI
        }
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
