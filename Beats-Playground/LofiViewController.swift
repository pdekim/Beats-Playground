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
    
    // kick
    var kick1: AVAudioPlayer = AVAudioPlayer()
    var kick2: AVAudioPlayer = AVAudioPlayer()
    var kick3: AVAudioPlayer = AVAudioPlayer()
    
    // snare
    var snare6: AVAudioPlayer = AVAudioPlayer()
    var snare7: AVAudioPlayer = AVAudioPlayer()
    var snare8: AVAudioPlayer = AVAudioPlayer()
    
    // hat
    var hat1: AVAudioPlayer = AVAudioPlayer()
    var hat2: AVAudioPlayer = AVAudioPlayer()
    var hat3: AVAudioPlayer = AVAudioPlayer()
    
    // perc
    var perc1: AVAudioPlayer = AVAudioPlayer()
    var perc2: AVAudioPlayer = AVAudioPlayer()
    var perc3: AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var LofiBackgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        LofiBackgroundImage.image = #imageLiteral(resourceName: "Background2")
        
        let kick1File = Bundle.main.path(forResource: "Kick1", ofType: "wav")
        let kick2File = Bundle.main.path(forResource: "Kick2", ofType: "wav")
        let kick3File = Bundle.main.path(forResource: "Kick3", ofType: "wav")
        
        let snare6File = Bundle.main.path(forResource: "Snare6", ofType: "wav")
        let snare7File = Bundle.main.path(forResource: "Snare7", ofType: "wav")
        let snare8File = Bundle.main.path(forResource: "Snare8", ofType: "wav")
        
        let hat1File = Bundle.main.path(forResource: "Hat1", ofType: "wav")
        let hat2File = Bundle.main.path(forResource: "Hat2", ofType: "wav")
        let hat3File = Bundle.main.path(forResource: "Hat3", ofType: "wav")
        
        let perc1File = Bundle.main.path(forResource: "Perc1", ofType: "wav")
        let perc2File = Bundle.main.path(forResource: "Perc2", ofType: "wav")
        let perc3File = Bundle.main.path(forResource: "Perc3", ofType: "wav")
        
        
        do {
            
            try kick1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: kick1File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try kick2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: kick2File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try kick3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: kick3File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try snare6 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: snare6File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try snare7 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: snare7File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try snare8 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: snare8File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try hat1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: hat1File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try hat2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: hat2File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try hat3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: hat3File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try perc1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: perc1File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try perc2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: perc2File!))
            
        }
        catch {
            
            print(error)
            
        }
        
        do {
            
            try perc3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: perc3File!))
            
        }
        catch {
            
            print(error)
            
        }
        


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonBackHomeFromLofi(_ sender: Any) {
        performSegue(withIdentifier: "goToHomeFromLofi", sender: self)
    }
    
    
    @IBAction func LofiBeatPadKick(_ sender: BeatPadDesign) {
        
        if sender.tag == 1
        {
            kick1.currentTime = 0
            kick1.play()
        }
        if sender.tag == 2
        {
            kick2.currentTime = 0
            kick2.play()
        }
        if sender.tag == 3
        {
            kick3.currentTime = 0
            kick3.play()
        }

    }
    
    
    @IBAction func LofiBeatPadSnare2(_ sender: BeatPadDesign) {
        
        if sender.tag == 4
        {
            snare6.currentTime = 0
            snare6.play()
        }
        if sender.tag == 5
        {
            snare7.currentTime = 0
            snare7.play()
        }
        if sender.tag == 6
        {
            snare8.currentTime = 0
            snare8.play()
        }
    }
    
    
    @IBAction func LofiBeatPadHat(_ sender: BeatPadDesign) {
        
        if sender.tag == 7
        {
            hat1.currentTime = 0
            hat1.play()
        }
        if sender.tag == 8
        {
            hat2.currentTime = 0
            hat2.play()
        }
        if sender.tag == 9
        {
            hat3.currentTime = 0
            hat3.play()
        }
        
    }
    
    
    @IBAction func LofiBeatPadPerc(_ sender: BeatPadDesign) {
        
        if sender.tag == 10
        {
            perc1.currentTime = 0
            perc1.play()
        }
        if sender.tag == 11
        {
            perc2.currentTime = 0
            perc2.play()
        }
        if sender.tag == 12
        {
            perc3.currentTime = 0
            perc3.play()
        }
        
    }
    
    
    
    
}

