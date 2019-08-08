//
//  Game.swift
//  TicTacToe
//
//  Created by Laura Quinn on 2019-08-08.
//

import Foundation
import UIKit

enum GameResult {
    case tie
    case win
    case lose
}

enum GameStatus {
    case ready
    case play
    case endRound
    case endGameAnimation
    case endGame
}

public class Game {
    enum Defaults {
        static let minOpponents = 1
        static let maxOpponents = 4
    }
    
    public var roundsToWin: UInt = 0
    
    public var prize = "🏆"
    
    public var actions = [Action]()
    
    var opponents = [Player]()
    
    public var myColour: UIColor = UIColor.init(red: 0, green: 0.639156863, blue: 0.8509803922, alpha: 1)

    public var resultLabelColour: UIColor = UIColor.init(red: 0, green: 0.7457480216, blue: 1, alpha: 0)
    
    public var changeActionButtonsColour: UIColor = UIColor.init(red: 0, green: 0.7457480216, blue: 1, alpha: 0)

    public var mainButtonColour: UIColor = UIColor.init(red: 0, green: 0.6392156863, blue: 8509803922, alpha: 1)
    
    public var outerRingColour: UIColor = UIColor.init(red: 0.7450980392, green: 0.8352941176, blue: 0.8980392157, alpha: 1)
    
    public var innerRingColour: UIColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 1)
    
    //supposed to be gradient
    public var backgroundColours: UIColor = UIColor.init(red: 0.7843137255, green: 0.9058823529, blue: 1, alpha: 1)

    public var useDefaults = false
    
    public var canPlay = false
    
    var shouldDimLosers: Bool {
        return opponents.count > Defaults.minOpponents
    }
    
    var players = [Player]()
    
    var status: GameStatus = .ready
    
    var selectableActions = [Action]()
    
    var randomAction: Action?
    
    var roundResult = GameResult.tie
    
    public init() {}
    
    public func addOpponent(_ emoji: String, colour: UIColor) {
        let opponent = Player(emoji, colour: colour, type: .bot)
        
        opponents += [opponent]
        
        opponent.identifier = opponent.emoji + "\(opponents.count)"
    }
    
    private func addAction(_ emoji: String, type: ActionType) -> Action {
        let action = Action(emoji, type: type)
        self.actions += [action]
        
        selectableActions.removeAll()
        selectableActions += self.actions.filter {!($0.type == .hidden)}
        
        if self.actions.count > selectableActions.count && randomAction == nil {
            randomAction = Action("?", type: .random)
        }
        return action
    }
    
    public func addAction(_ emoji: String) -> Action {
        return addAction(emoji, type: .standard)
    }
    
    public func addHiddenAction(_ emoji: String) -> Action {
        return addAction(emoji, type: .hidden)
    }
    
    public func loadDefaultSettings() {
        useDefaults = true
    }
    
    public func play() {
        canPlay = true
    }
}
