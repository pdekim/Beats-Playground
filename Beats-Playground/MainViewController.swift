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
    
    var mainMenuDrumBeat: AVAudioPlayer = AVAudioPlayer()
    
    var x: Int = 0;
    
    
    @IBOutlet weak var MainBackgroundImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        MainBackgroundImage.image = #imageLiteral(resourceName: "MainBackground2")
        
        let mainMenuDrumBeatFile = Bundle.main.path(forResource: "MainMenuSound", ofType: "mp3")
        
        do {
            
            try mainMenuDrumBeat = AVAudioPlayer(contentsOf: URL(fileURLWithPath: mainMenuDrumBeatFile!))
            
        }
        catch {
            
            print(error)
            
        }
        
        // loops menu music
        mainMenuDrumBeat.numberOfLoops = -1
        mainMenuDrumBeat.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonSegueToClassic(_ sender: Any) {
        mainMenuDrumBeat.stop()
        performSegue(withIdentifier: "goToClassicViewController", sender: self)
    }
    
    
    @IBAction func buttonSegueToLofi(_ sender: Any) {
        mainMenuDrumBeat.stop()
        performSegue(withIdentifier: "goToLofiViewController", sender: self)
    }


}

