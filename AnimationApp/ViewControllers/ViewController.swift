//
//  ViewController.swift
//  AnimationApp
//
//  Created by NikolayD on 04.08.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationAboutLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    private var currentAnimation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 20
        
        runButton.layer.cornerRadius = 10
        runButton.setTitle("Run \(currentAnimation.preset)", for: .normal)
    }
    

    @IBAction func runButtonPressed() {
        animationAboutLabel.text = currentAnimation.description
        
        springAnimationView.animation = currentAnimation.preset
        springAnimationView.curve = currentAnimation.curve
        springAnimationView.force = currentAnimation.force
        springAnimationView.duration = currentAnimation.duration
        springAnimationView.delay = currentAnimation.delay
        springAnimationView.animate()
        
        currentAnimation = Animation.getRandomAnimation()
        runButton.setTitle("Run \(currentAnimation.preset)", for: .normal)
    }
}

