//
//  MUIKitColor.swift
//  MUIKit
//
//  Created by Raul Kevin Aliaga Shapiama on 4/26/23.
//

import UIKit

public extension UIColor {
    convenience init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }

    
    static let MVL_red = UIColor(hex: "#E23636")
    
    static let MVL_black = UIColor(hex: "#000000")
    
    static let MVL_black_gray = UIColor(hex: "#504A4A")
    
    static let MVL_blue = UIColor(hex: "#518CCA")
    
    static let MVL_orange = UIColor(hex: "#F78F3F")
}
