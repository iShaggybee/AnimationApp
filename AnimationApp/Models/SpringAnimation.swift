//
//  SpringAnimation.swift
//  AnimationApp
//
//  Created by Kislov Vadim on 16.05.2022.
//

import CoreGraphics

struct SpringAnimation {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    func getDescription() -> String {
        """
        name: \(animation)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(delay)
        """
    }
    
    static func getAnimations() -> [SpringAnimation] {
        [SpringAnimation(animation: "pop",
                         curve: "easeOut",
                         force: CGFloat.random(in: 1...2),
                         duration: CGFloat.random(in: 1...2),
                         delay: 0.2),
         SpringAnimation(animation: "morph",
                         curve: "spring",
                         force: CGFloat.random(in: 1...2),
                         duration: CGFloat.random(in: 1...2),
                         delay: 0.2),
         SpringAnimation(animation: "flash",
                        curve: "spring",
                         force: CGFloat.random(in: 1...2),
                         duration: CGFloat.random(in: 1...2),
                         delay: 0.2),
         SpringAnimation(animation: "fadeInRight",
                         curve: "easeIn",
                         force: CGFloat.random(in: 1...2),
                         duration: CGFloat.random(in: 1...2),
                         delay: 0.2),
         SpringAnimation(animation: "slideDown",
                         curve: "easeOut",
                         force: CGFloat.random(in: 1...2),
                         duration: CGFloat.random(in: 1...2),
                         delay: 0.2),
         SpringAnimation(animation: "squeezeDown",
                         curve: "easeOut",
                         force: CGFloat.random(in: 1...2),
                         duration: CGFloat.random(in: 1...2),
                         delay: 0.2),
         SpringAnimation(animation: "flipY",
                         curve: "easeInOut",
                         force: CGFloat.random(in: 1...2),
                         duration: CGFloat.random(in: 1...2),
                         delay: 0.2),
         SpringAnimation(animation: "zoomIn",
                         curve: "spring",
                         force: CGFloat.random(in: 1...2),
                         duration: CGFloat.random(in: 1...2),
                         delay: 0.2)]
    }
}
