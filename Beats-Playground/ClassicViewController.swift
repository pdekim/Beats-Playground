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
    
    // bass
    var bass1: AVAudioPlayer = AVAudioPlayer()
    var bass2: AVAudioPlayer = AVAudioPlayer()
    var bass3: AVAudioPlayer = AVAudioPlayer()
    
    // snare
    var snare1: AVAudioPlayer = AVAudioPlayer()
    var snare2: AVAudioPlayer = AVAudioPlayer()
    var snare3: AVAudioPlayer = AVAudioPlayer()
    
    // highhat
    var highHat1: AVAudioPlayer = AVAudioPlayer()
    var highHat2: AVAudioPlayer = AVAudioPlayer()
    var highHat3: AVAudioPlayer = AVAudioPlayer()
    
    // crash
    var crash1: AVAudioPlayer = AVAudioPlayer()
    var crash2: AVAudioPlayer = AVAudioPlayer()
    var crash3: AVAudioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var ClassicBackgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ClassicBackgroundImage.image = #imageLiteral(resourceName: "MainBackground")
        
        
        let bass1File = Bundle.main.path(forResource: "Bass1", ofType: "mp3")
        let bass2File = Bundle.main.path(forResource: "Bass2", ofType: "mp3")
        let bass3File = Bundle.main.path(forResource: "Bass3", ofType: "mp3")
        
        let snare1File = Bundle.main.path(forResource: "Snare1", ofType: "mp3")
        let snare2File = Bundle.main.path(forResource: "Snare2", ofType: "mp3")
        let snare3File = Bundle.main.path(forResource: "Snare3", ofType: "mp3")
        
        let highHat1File = Bundle.main.path(forResource: "Highhat1", ofType: "mp3")
        let highHat2File = Bundle.main.path(forResource: "Highhat2", ofType: "mp3")
        let highHat3File = Bundle.main.path(forResource: "Highhat3", ofType: "mp3")
        
        let crash1File = Bundle.main.path(forResource: "Crash1", ofType: "mp3")
        let crash2File = Bundle.main.path(forResource: "Crash2", ofType: "mp3")
        let crash3File = Bundle.main.path(forResource: "Crash3", ofType: "mp3")
        
        
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
        
        do {
            
            try highHat1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: highHat1File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try highHat2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: highHat2File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try highHat3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: highHat3File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try crash1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: crash1File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try crash2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: crash2File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try crash3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: crash3File!))
            
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
        
        // checks to see which button (through tag) is pressed
        // current time set to 0 whenever clicked
        
        if sender.tag == 1
        {
            bass1.currentTime = 0
            bass1.play()
        }
        if sender.tag == 2
        {
            bass2.currentTime = 0
            bass2.play()
        }
        if sender.tag == 3
        {
            bass3.currentTime = 0
            bass3.play()
        }

    }

    
    
    @IBAction func classicBeatPadSnare(_ sender: BeatPadDesign) {
    
        if sender.tag == 4
        {
            snare1.currentTime = 0
            snare1.play()
        }
        if sender.tag == 5
        {
            snare2.currentTime = 0
            snare2.play()
        }
        if sender.tag == 6
        {
            snare3.currentTime = 0
            snare3.play()
        }

    }
    
    
    @IBAction func classicBeatPadCrash(_ sender: BeatPadDesign) {
        
        if sender.tag == 7
        {
            crash1.currentTime = 0
            crash1.play()
        }
        if sender.tag == 8
        {
            crash2.currentTime = 0
            crash2.play()
        }
        if sender.tag == 9
        {
            crash3.currentTime = 0
            crash3.play()
        }
    }
    
    
    
    @IBAction func classicBeatPadOther(_ sender: BeatPadDesign) {
        
        if sender.tag == 10
        {
            highHat1.currentTime = 0
            highHat1.play()
        }
        if sender.tag == 11
        {
            highHat2.currentTime = 0
            highHat2.play()
        }
        if sender.tag == 12
        {
            highHat3.currentTime = 0
            highHat3.play()
        }
    }
    
    
    
    
    

}
