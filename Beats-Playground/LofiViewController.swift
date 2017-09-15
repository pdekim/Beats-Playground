//
//  LofiViewController.swift
//  Beats-Playground
//
//  Created by Peter Kim on 9/5/17.
//  Copyright © 2017 peterkim. All rights reserved.
//

import UIKit
import AVFoundation

class LofiViewController: UIViewController {
    
    @IBOutlet weak var LofiBackgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        LofiBackgroundImage.image = #imageLiteral(resourceName: "Background2")
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonBackHomeFromLofi(_ sender: Any) {
        performSegue(withIdentifier: "goToHomeFromLofi", sender: self)
    }
    
    
    
}

