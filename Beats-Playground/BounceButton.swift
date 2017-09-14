//
//  BounceButton.swift
//  Beats-Playground
//
//  Created by Peter Kim on 9/12/17.
//  Copyright © 2017 peterkim. All rights reserved.
//


// button animation class

import UIKit

class BounceButton: UIButton {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // changing scale of button
        self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6, options: .allowUserInteraction, animations: {
            // resetting back to normal
            self.transform = CGAffineTransform.identity }, completion: nil)
        
        super.touchesBegan(touches, with: event)
        
    }
    
}
