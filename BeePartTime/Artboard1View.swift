//
//  Artboard1View.swift
//  Exported from Kite Compositor for Mac 1.9.4
//
//  Created on 2018/10/7, 6:13 PM.
//


import UIKit


class Artboard1View: UIView
{
    
    // MARK: - Initialization
    
    init()
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 270, height: 270))
        self.setupLayers()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.setupLayers()
    }
    
    // MARK: - Setup Layers
    
    private func setupLayers()
    {
        // Images
        //
        guard let artboardXPngImage = UIImage(named: "Artboard3") else {
            fatalError("Warning: Unable to locate image named 'Artboard 1@3x.png'")
        }
        guard let titlePngImage = UIImage(named: "Title.png") else {
                fatalError("Warning: Unable to locate image named 'Title.png'")
        }
            
            // Paths
            //
            let positionAnimationPath = CGMutablePath()
            positionAnimationPath.move(to: CGPoint(x: 197, y: 681))
            positionAnimationPath.addCurve(to: CGPoint(x: 324, y: 561), control1: CGPoint(x: 233, y: 770), control2: CGPoint(x: 263, y: 625))
            positionAnimationPath.addCurve(to: CGPoint(x: 371, y: 444), control1: CGPoint(x: 385, y: 497), control2: CGPoint(x: 418, y: 520))
            positionAnimationPath.addCurve(to: CGPoint(x: 284, y: 331), control1: CGPoint(x: 324, y: 368), control2: CGPoint(x: 338, y: 434))
            positionAnimationPath.addCurve(to: CGPoint(x: 208, y: 181), control1: CGPoint(x: 230, y: 228), control2: CGPoint(x: 204, y: 196))
            positionAnimationPath.addCurve(to: CGPoint(x: 324, y: 89), control1: CGPoint(x: 212, y: 166), control2: CGPoint(x: 324, y: 89))
            positionAnimationPath.move(to: CGPoint(x: 311, y: 63))
            positionAnimationPath.addCurve(to: CGPoint(x: 197, y: 39), control1: CGPoint(x: 243, y: 46), control2: CGPoint(x: 197, y: 39))
            positionAnimationPath.addCurve(to: CGPoint(x: 124, y: 124), control1: CGPoint(x: 197, y: 39), control2: CGPoint(x: 125, y: 98))
            positionAnimationPath.addCurve(to: CGPoint(x: 119, y: 219), control1: CGPoint(x: 123, y: 150), control2: CGPoint(x: 101, y: 200))
            positionAnimationPath.addCurve(to: CGPoint(x: 207, y: 320), control1: CGPoint(x: 137, y: 238), control2: CGPoint(x: 207, y: 320))
            positionAnimationPath.move(to: CGPoint(x: 207, y: 329))
            
            // Artboard 1
            //
            let artboardLayer = CALayer()
            artboardLayer.name = "Artboard 1"
            artboardLayer.bounds = CGRect(x: 0, y: 0, width: 112, height: 112)
            artboardLayer.position = CGPoint(x: 206, y: 753)
            artboardLayer.contents = artboardXPngImage.cgImage
            artboardLayer.contentsGravity = kCAGravityResizeAspect
            artboardLayer.contentsScale = 3
            artboardLayer.shadowOffset = CGSize(width: 0, height: 1)
            artboardLayer.fillMode = kCAFillModeForwards
            
            // Artboard 1 Animations
            //
            
            // position
            //
            let positionAnimation = CAKeyframeAnimation()
            positionAnimation.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.000001
            positionAnimation.duration = 3.333679
            positionAnimation.fillMode = kCAFillModeForwards
            positionAnimation.isRemovedOnCompletion = false
            positionAnimation.keyPath = "position"
            positionAnimation.values = [ CGPoint(x: 212, y: 674), CGPoint(x: 400, y: 400), CGPoint(x: 212, y: 150), CGPoint(x: 212, y: 300) ]
            positionAnimation.path = positionAnimationPath
            positionAnimation.calculationMode = kCAAnimationLinear
            
            artboardLayer.add(positionAnimation, forKey: "positionAnimation")
            
            // bounds
            //
            let boundsAnimation = CABasicAnimation()
            boundsAnimation.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.000001
            boundsAnimation.duration = 3.333679
            boundsAnimation.fillMode = kCAFillModeForwards
            boundsAnimation.isRemovedOnCompletion = false
            boundsAnimation.timingFunction = CAMediaTimingFunction(controlPoints: 0.817326, -0.051088, 0.334614, 0.619302)
            boundsAnimation.keyPath = "bounds"
            boundsAnimation.toValue = CGRect(x: 0, y: 0, width: 450, height: 450)
            
            artboardLayer.add(boundsAnimation, forKey: "boundsAnimation")
            
            // transform.rotation.z
            //
            let transformRotationZAnimation = CASpringAnimation()
            transformRotationZAnimation.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.000001
            transformRotationZAnimation.duration = 1500
            transformRotationZAnimation.speed = 0.8
            transformRotationZAnimation.autoreverses = true
            transformRotationZAnimation.fillMode = kCAFillModeForwards
            transformRotationZAnimation.isRemovedOnCompletion = false
            transformRotationZAnimation.keyPath = "transform.rotation.z"
            transformRotationZAnimation.toValue = 81.679
            transformRotationZAnimation.fromValue = 0
            transformRotationZAnimation.stiffness = 200
            transformRotationZAnimation.damping = 10
            transformRotationZAnimation.mass = 0.7
            transformRotationZAnimation.initialVelocity = 4
            
            artboardLayer.add(transformRotationZAnimation, forKey: "transformRotationZAnimation")
            
            // Artboard 1 Sublayers
            //
            
            // Title
            //
            let titleLayer = CALayer()
            titleLayer.name = "Title"
            titleLayer.bounds = CGRect(x: 0, y: 0, width: 304, height: 304)
            titleLayer.position = CGPoint(x: 223.520553, y: 423.996953)
            titleLayer.contents = titlePngImage.cgImage
            titleLayer.contentsGravity = kCAGravityResizeAspect
            titleLayer.contentsScale = 3
            titleLayer.opacity = 0.34
            titleLayer.shadowOffset = CGSize(width: 0, height: 1)
            titleLayer.fillMode = kCAFillModeForwards
            
            // Title Animations
            //
            
            // bounds
            //
            let boundsAnimation1 = CABasicAnimation()
            boundsAnimation1.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.000001
            boundsAnimation1.duration = 0.5
            boundsAnimation1.fillMode = kCAFillModeForwards
            boundsAnimation1.isRemovedOnCompletion = false
            boundsAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
            boundsAnimation1.keyPath = "bounds"
            boundsAnimation1.toValue = CGRect(x: 0, y: 0, width: 450, height: 450)
            
            titleLayer.add(boundsAnimation1, forKey: "boundsAnimation1")
            
            // bounds
            //
            let boundsAnimation2 = CASpringAnimation()
            boundsAnimation2.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.500001
            boundsAnimation2.duration = 0.99321
            boundsAnimation2.fillMode = kCAFillModeForwards
            boundsAnimation2.isRemovedOnCompletion = false
            boundsAnimation2.keyPath = "bounds"
            boundsAnimation2.stiffness = 200
            boundsAnimation2.damping = 10
            boundsAnimation2.mass = 0.7
            boundsAnimation2.initialVelocity = 4
            
            titleLayer.add(boundsAnimation2, forKey: "boundsAnimation2")
            
            // opacity
            //
            let opacityAnimation = CASpringAnimation()
            opacityAnimation.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.000001
            opacityAnimation.duration = 1.452258
            opacityAnimation.speed = -1
            opacityAnimation.fillMode = kCAFillModeForwards
            opacityAnimation.isRemovedOnCompletion = false
            opacityAnimation.keyPath = "opacity"
            opacityAnimation.toValue = 0
            opacityAnimation.fromValue = 1
            opacityAnimation.stiffness = 247.100006
            opacityAnimation.damping = 6.7
            opacityAnimation.mass = 0.7
            opacityAnimation.initialVelocity = 4
            
            titleLayer.add(opacityAnimation, forKey: "opacityAnimation")
            
            artboardLayer.addSublayer(titleLayer)
            
            self.layer.addSublayer(artboardLayer)
            
        }
        
        // MARK: - Responder
        
        override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
        {
            guard let location = touches.first?.location(in: self.superview),
                let hitLayer = self.layer.presentation()?.hitTest(location) else { return }
            
            print("Layer \(hitLayer.name ?? String(describing: hitLayer)) was tapped.")
        }
}
