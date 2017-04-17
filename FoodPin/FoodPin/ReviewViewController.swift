//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Devstn1 on 2017-04-16.
//  Copyright © 2017 Solsteace. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var restaurantImage: UIImageView!
    
    var restaurant: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Applying a Blurring Effect to the Background Image
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // initial state of the container view (animation = growing and spring)
        //containerView.transform = CGAffineTransform.init(scaleX: 0, y: 0)
        // initial state of the container view (animation = Slide-Down)
        //containerView.transform = CGAffineTransform.init(translationX: 0, y: -1000)
        
        // combine transforms
        let scaleTransform = CGAffineTransform.init(scaleX: 0, y: 0)
        let translateTransform = CGAffineTransform.init(translationX: 0, y: -1000)
        let combineTransform = scaleTransform.concatenating(translateTransform)
        containerView.transform = combineTransform
        
        restaurantImage.image = UIImage(named: restaurant.image)
    }

    override func viewDidAppear(_ animated: Bool) {
        // create the growing effect and the slide-down
        UIView.animate(withDuration: 0.3, animations: {
            // final state of the container view
            self.containerView.transform = CGAffineTransform.identity
        })
        
        // spring animation
        /*UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3,
                       initialSpringVelocity: 0.2, options: .curveEaseInOut, animations: {
                        self.containerView.transform = CGAffineTransform.identity
        }, completion: nil)*/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
