//
//  Action.swift
//  TicTacToe
//
//  Created by Laura Quinn on 2019-08-08.
//

import Foundation
import UIKit

enum ActionType {
    case standard
    case random
    case hidden
}

public class Action: Equatable {
    let type: ActionType
    
    let emoji: String
    
    var beatsActions = [Action]()
    
    func commonInit() {}
    
    init() {
        emoji = ""
        type = .standard
        commonInit()
    }
    
    init(_ emoji: String, type: ActionType = .standard){
        self.type = type
        self.emoji = emoji
        commonInit()
    }
    
    public func beats(_ action: Action) {
        beats([action])
    }
    
    public func beats(_ actions: [Action]){
        beatsActions += actions
    }
    
    func isWinner(comparedTo action: Action) -> Bool {
        return beatsActions.contains(action)
    }
    
    public static func == (leftAction: Action, rightAction: Action) -> Bool {
        return leftAction.emoji == rightAction.emoji
    }
}
