//
//  ButtonDesign.swift
//  Beats-Playground
//
//  Created by Peter Kim on 9/12/17.
//  Copyright © 2017 peterkim. All rights reserved.
//

import UIKit

// interface builder
@IBDesignable class ButtonDesign: BounceButton {

    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            self.layer.borderWidth = borderWidth
            
        }
    }

}
