//
//  Extension + UIColor.swift
//  RealmDemoApp
//
//  Created by Mac on 11.05.2021.
//


import UIKit

extension UIColor {
    
    convenience init(r: Float, g: Float, b: Float, a: CGFloat = 1) {
        self.init(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: a)
    }
}
