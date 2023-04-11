//
//  AnimationViewController.swift
//  BMIApplication
//
//  Created by Anumula,Anjith Kumar on 4/10/23.
//

import UIKit

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var BMIResult: UILabel!
    
    var BMIcategory = 0.0
    
    @IBOutlet weak var BMIImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(BMIcategory <= 18.5){
            updateAndAnimate("thin")
            BMIResult.text = BMIResult.text!+": thin"
        }else if (BMIcategory > 18.5 && BMIcategory <= 24.9){
            updateAndAnimate("healthy")
            shakeMe("healthy")
            BMIResult.text = BMIResult.text!+": Healthy"
        }else if (BMIcategory > 24.9 && BMIcategory <= 29.9 ){
            updateAndAnimate("Overweight")
            BMIResult.text = BMIResult.text!+": OverWeight"
        }else{
            updateAndAnimate("Obese")
            BMIResult.text = BMIResult.text!+": Obese"
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func shakeMe(_ imageName : String){
        var width = BMIImage.frame.width
        
        width += 40
        
        var height = BMIImage.frame.height
        
        height = height+40
        
        var x = BMIImage.frame.origin.x-20
        var y = BMIImage.frame.origin.y-20
        
        var largeFrame = CGRect(x:x,y:y,width:width,height: height)
        
        UIView.animate(withDuration: 1,delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 50, animations: {
            self.BMIImage.frame = largeFrame
        })
    }
    
    
    func updateAndAnimate(_ imageName : String){
        
        //making the current image opaque.
        UIView.animate(withDuration: 1, animations: {
            self.BMIImage.alpha = 0
        })
        
        //Assign the new image with animation and make it transparent. (alpha = 1)
        
        UIView.animate(withDuration: 1, delay:0.5, animations: {
            self.BMIImage.alpha = 1
            self.BMIImage.image = UIImage(named: imageName)
        })
        
        
        
    }
    
    
    
}
