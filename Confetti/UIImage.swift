//
//  UIImage.swift
//  Confetti
//
//  Created by Julia Nikitina on 20/09/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

extension UIImage {
    
    static var purpleConfetti: UIImage? {
        guard let purple = UIImage(named: "purple_confetti.png") else { return nil }
        return purple
    }
    
    static var yellowConfetti: UIImage? {
        guard let yellow = UIImage(named: "yellow_confetti.png") else { return nil }
        return yellow
    }
    
    static var pinkConfetti: UIImage? {
        guard let pink = UIImage(named: "pink_confetti.png") else { return nil }
        return pink
    }
    
}
