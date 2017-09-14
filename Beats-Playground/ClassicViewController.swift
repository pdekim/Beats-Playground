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
    
    var bass1: AVAudioPlayer = AVAudioPlayer()
    var bass2: AVAudioPlayer = AVAudioPlayer()
    var bass3: AVAudioPlayer = AVAudioPlayer()
    var snare1: AVAudioPlayer = AVAudioPlayer()
    var snare2: AVAudioPlayer = AVAudioPlayer()
    var snare3: AVAudioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var ClassicBackgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ClassicBackgroundImage.image = #imageLiteral(resourceName: "MainBackground")
        
        
        let bass1File = Bundle.main.path(forResource: "Bass1", ofType: "mp3")
        let bass2File = Bundle.main.path(forResource: "Bass2", ofType: "mp3")
        let bass3File = Bundle.main.path(forResource: "Bass2", ofType: "mp3")
        let snare1File = Bundle.main.path(forResource: "Snare1", ofType: "mp3")
        let snare2File = Bundle.main.path(forResource: "Snare2", ofType: "mp3")
        let snare3File = Bundle.main.path(forResource: "Snare2", ofType: "mp3")
        
        do {
            
            try bass1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bass1File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try bass2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bass2File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try bass3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bass3File!))
            
        }
        catch {
            
            print(error)
            
        }

        do {
            
            try snare1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: snare1File!))
            
        }
        catch {
            
            print(error)
            
        }

        do {
            
            try snare2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: snare2File!))
            
        }
        catch {
            
            print(error)
            
        }

        do {
            
            try snare3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: snare3File!))
            
        }
        catch {
            
            print(error)
            
        }


        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonBackHomeFromClassic(_ sender: Any) {
        performSegue(withIdentifier: "goToHomeFromClassic", sender: self)
    }
    

    @IBAction func classicBeatPadBass(_ sender: BeatPadDesign) {
        if sender.tag == 1
        {
            bass1.play()
        }
        if sender.tag == 2
        {
            bass2.play()
        }
        if sender.tag == 3
        {
            bass3.play()
        }
    }
    
    
    @IBAction func classicBeatPadSnare(_ sender: BeatPadDesign) {
    
        if sender.tag == 4
        {
            snare1.play()
        }
        if sender.tag == 5
        {
            snare2.play()
        }
        if sender.tag == 6
        {
            snare3.play()
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
