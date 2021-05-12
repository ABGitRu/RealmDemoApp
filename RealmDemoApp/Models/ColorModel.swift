//
//  ColorModel.swift
//  RealmDemoApp
//
//  Created by Mac on 11.05.2021.
//

import Foundation
import RealmSwift

class BGColor: Object {
    
    static let shared = BGColor()
    
    @objc dynamic var red: Float = 0
    @objc dynamic var green: Float = 0
    @objc dynamic var blue: Float = 0
    
    private override init() {}
    
}

