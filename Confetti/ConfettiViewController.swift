//
//  ViewController.swift
//  Confetti
//
//  Created by Julia Nikitina on 20/09/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

final class ConfettiViewController: UIViewController {

    private var emitterLayer: CAEmitterLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createEmitterLayer()
    }

    private func createEmitterLayer() {
        emitterLayer = CAEmitterLayer()
        
        let purpleCell = CAEmitterCell()
        purpleCell.contents = UIImage.purpleConfetti
        
        let pinkCell = CAEmitterCell()
        pinkCell.contents = UIImage.pinkConfetti
        
        let yellowCell = CAEmitterCell()
        yellowCell.contents = UIImage.yellowConfetti
        
        
        let cells = [purpleCell, pinkCell, yellowCell]
        
        cells.forEach { cell in
            cell.birthRate = 10
            cell.lifetime = 10
            cell.velocity = 100
            cell.spin = 0.3
        }
        
        emitterLayer?.emitterCells = cells
        emitterLayer?.emitterSize = CGSize(width: view.frame.width, height: 2)
        emitterLayer?.emitterShape = .line
        
        view.layer.addSublayer(emitterLayer ?? CAEmitterLayer())
    }
}

