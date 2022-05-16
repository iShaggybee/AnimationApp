//
//  ViewController.swift
//  AnimationApp
//
//  Created by Kislov Vadim on 15.05.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var animationImageView: SpringImageView!
    @IBOutlet var aboutAnimationLabel: UILabel!
    @IBOutlet var runAnimationButton: SpringButton!
    
    private let animations =  SpringAnimation.getAnimations()
    private var nextAnimationIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextAnimationIndex = getRandomAnimationIndex()
        
        aboutAnimationLabel.text = animations[nextAnimationIndex].getDescription()
    }
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        initAnimation(index: nextAnimationIndex)

        animationImageView.animate()
        
        sender.animation = "morph"
        sender.animate()
        
        nextAnimationIndex = getRandomAnimationIndex()
        
        runAnimationButton.setTitle(
            "Run \(animations[nextAnimationIndex].animation)",
            for: .normal)
    }
    
    private func initAnimation(index: Int) {
        let currentAnimation = animations[index]

        animationImageView.animation = currentAnimation.animation
        animationImageView.curve = currentAnimation.curve
        animationImageView.force = currentAnimation.force
        animationImageView.duration = currentAnimation.duration
        animationImageView.delay = currentAnimation.delay
        
        aboutAnimationLabel.text = currentAnimation.getDescription()
    }

    private func getRandomAnimationIndex() -> Int {
        Int.random(in: 0..<animations.count)
    }
}

