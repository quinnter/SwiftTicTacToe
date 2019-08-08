//
//  Player.swift
//  TicTacToe
//
//  Created by Laura Quinn on 2019-08-08.
//

import Foundation
import UIKit

enum PlayerType {
    case bot
    case human
}

class Player: Equatable {
    var emoji: String
    
    var colour: UIColor
    
    var identifier: String
    
    let type: PlayerType
    
    var action: Action
    
    var winCount: UInt = 0
    
    var isRandom = false
    
    init(_ emoji: String = "", colour: UIColor = UIColor.clear, type: PlayerType = .human) {
        action = Action()
        identifier = emoji
        self.emoji = emoji
        self.type = type
        self.colour = colour
        if type == .bot {
            isRandom = true
        }
    }
    
    public static func == (leftPlayer: Player, rightPlayer: Player) -> Bool {
        return leftPlayer.identifier == rightPlayer.identifier
    }
}
