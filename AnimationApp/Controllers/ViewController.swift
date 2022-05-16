//
//  ViewController.swift
//  AnimationApp
//
//  Created by Kislov Vadim on 15.05.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var animationView: SpringImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        sender.animation = "wobble"
        sender.animate()
    }
}

