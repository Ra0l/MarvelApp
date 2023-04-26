//
//  ActionButton.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import Foundation
import UIKit

@IBDesignable class ActionButton: AMButton {
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        self.updateAppereance()
    }
        
    private func updateAppereance() {
        
        self.shape_cornerRadius = 8
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
    }
}
