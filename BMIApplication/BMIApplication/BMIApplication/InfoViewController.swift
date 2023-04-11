//
//  ViewController.swift
//  BMIApplication
//
//  Created by Anumula,Anjith Kumar on 4/9/23.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var heightTextOL: UITextField!
    
    @IBOutlet weak var weightTextOL: UITextField!
    
    var BMI = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtn(_ sender: Any) {
        
        var h = Double(heightTextOL.text!)!
        var w = Double(weightTextOL.text!)!
        BMI = (w/(h*h))*730
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "infoSegue"{
            var destination = segue.destination as! BMIInfoContoller
            destination.calculateBMI = BMI
        }
    }
}

