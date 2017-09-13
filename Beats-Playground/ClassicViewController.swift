//
//  ClassicViewController.swift
//  Beats-Playground
//
//  Created by Peter Kim on 9/5/17.
//  Copyright © 2017 peterkim. All rights reserved.
//

import UIKit
import AVFoundation

class ClassicViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var ClassicBackgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ClassicBackgroundImage.image = #imageLiteral(resourceName: "MainBackground")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonBackHomeFromClassic(_ sender: Any) {
        performSegue(withIdentifier: "goToHomeFromClassic", sender: self)
    }
    

    @IBAction func classicBeatPadBass(_ sender: UIButton) {
        if sender.tag == 1
        {

        
        }
        if sender.tag == 2
        {
            
        }
        if sender.tag == 3
        {
            
        }
    }
    
    
    @IBAction func classicBeatPadSnare(_ sender: UIButton) {
    
        if sender.tag == 4
        {
    
    
        }
        if sender.tag == 5
        {
    
        }
        if sender.tag == 6
        {
    
        }

    }
    
    
    @IBAction func classicBeatPadCrash(_ sender: UIButton) {
        
        if sender.tag == 7
        {
            
        }
        if sender.tag == 8
        {
            
        }
        if sender.tag == 9
        {
            
        }
    }
    
    
    
    @IBAction func classicBeatPadOther(_ sender: UIButton) {
        
        if sender.tag == 10
        {
            
        }
        if sender.tag == 11
        {
            
        }
        if sender.tag == 12
        {
            
        }
    }
    
    
    
    
    

}
