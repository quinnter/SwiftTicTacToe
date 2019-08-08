//
//  ActionCollectionViewCell.swift
//  TicTacToe
//
//  Created by Laura Quinn on 2019-08-08.
//

import Foundation
import UIKit

class ActionCollectionViewCell: UICollectionViewCell {
    let actionView = ActionView(frame: CGRect.zero)
    
    var action = Action() {
        didSet {
            actionView.action = action
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(actionView)
        actionView.translatesAutoresizingMaskIntoConstraints = false
        actionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        actionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        actionView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        actionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("\(#function) has not been implemented.")
    }
}
