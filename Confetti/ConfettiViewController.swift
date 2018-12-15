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
        purpleCell.contents = UIImage.purpleConfetti?.cgImage
        let pinkCell = CAEmitterCell()
        pinkCell.contents = UIImage.pinkConfetti?.cgImage
        let yellowCell = CAEmitterCell()
        yellowCell.contents = UIImage.yellowConfetti?.cgImage
        var dotCells = [CAEmitterCell]()
        let images = [
            UIImage.pinkDot?.cgImage,
            UIImage.greenDot?.cgImage,
            UIImage.yellowDot?.cgImage
        ]
        for index in 0..<images.count {
            let cell = CAEmitterCell()
            cell.contents = images[index]
            cell.birthRate = 10
            cell.lifetime = 100
            cell.velocity = 150
            cell.scale = 0.1
            cell.emissionRange = CGFloat.pi / 2
            cell.emissionLongitude = CGFloat.pi
            dotCells.append(cell)
        }
        var cells = [purpleCell, pinkCell, yellowCell]
        cells.forEach { cell in
            cell.birthRate = 10
            cell.lifetime = 100
            cell.velocity = 200
            cell.spin = 4
            cell.spinRange = 10.0
            cell.scale = 0.04
            cell.emissionRange = CGFloat.pi / 2
            cell.emissionLongitude = CGFloat.pi
        }
        cells += dotCells
        emitterLayer?.emitterCells = cells
        emitterLayer?.emitterShape = .line
        emitterLayer?.emitterPosition = CGPoint(x: view.frame.width / 2,
                                                y: 25)
        emitterLayer?.emitterSize = CGSize(width: view.frame.width,
                                           height: 1)
        view.layer.addSublayer(emitterLayer ?? CAEmitterLayer())
    }
}

