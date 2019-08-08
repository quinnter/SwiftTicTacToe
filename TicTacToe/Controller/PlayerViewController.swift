//
//  PlayerViewController.swift
//  TicTacToe
//
//  Created by Laura Quinn on 2019-08-08.
//

import Foundation
import UIKit
import CoreGraphics

class PlayerViewController: UIViewController, CAAnimationDelegate {
    enum Defaults {
        static let prizeTimerInterval: TimeInterval = 2
        
        static let animationIDKey = "id"
        
        static let strokeEndAnimationKey = "strokeEnd"
        
        static let increaseWinRingAnimationValue = "increaseWinRingAnimationValue"
    }
    
    var game: Game
    let player: Player
    let actionView: ActionView()
    
    private let ringGradientMaskLayer = CAGradientLayer()
    
    let roundsWonLayer = CAShapeLayer()
    
    let innerCircleShapeLayer = CAShapeLayer()
    
    let trackShapeLayer = CAShapeLayer()
    
    var prizeLabel: UILabel?
    
    private var winnerParticleView: BubbleParticleView?
    
    private var winnerTimer: Timer?
    
    var ringTrackMultiplier: CGFloat = 0
    
    var ringTrackStrokeWidth: CGFloat = 0
    
    var innerCircleMultiplier: CGFloat = 0
    
}
