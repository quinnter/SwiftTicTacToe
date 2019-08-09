//
//  GradientBackgroundView.swift
//  TicTacToe
//
//  Created by Laura Quinn on 2019-08-09.
//

import Foundation
import UIKit

class GradientView: UIView {
    
    var gradientLayer: CAGradientLayer {
        return layer as! CAGradientLayer
    }
    
    override class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }
}
