//
//  MenuViewController.swift
//  StoreAppClothing
//
//  Created by Don on 5/23/22.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    @IBAction func menuIconTap(_ sender: Any) {
        if menuOut == false {
            leading.constant = 400
            trailing.constant = -400
            menuOut = true
        }
        else {
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in print(" The animation in complete!")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
