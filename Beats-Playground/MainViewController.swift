//
//  ViewController.swift
//  Beats-Playground
//
//  Created by Peter Kim on 9/5/17.
//  Copyright © 2017 peterkim. All rights reserved.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {
    
    @IBOutlet weak var MainBackgroundImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        MainBackgroundImage.image = #imageLiteral(resourceName: "MainBackground")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonSegueToClassic(_ sender: Any) {
        performSegue(withIdentifier: "goToClassicViewController", sender: self)
    }
    
    
    @IBAction func buttonSegueToLofi(_ sender: Any) {
        performSegue(withIdentifier: "goToLofiViewController", sender: self)
    }


}

