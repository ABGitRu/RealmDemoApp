//
//  DataManager.swift
//  RealmDemoApp
//
//  Created by Mac on 12.05.2021.
//

import RealmSwift

struct DataManager {
    
    static let shared = DataManager()
    
    let localRealm = try! Realm()
    
    func fetchData() -> Results<BGColor> {
        let colors = localRealm.objects(BGColor.self)
        return colors
    }
    
    
    func setupModel(color: BGColor) -> BGColor {
        let colors = BGColor(value: color)
        colors.red = color.red
        colors.green = color.green
        colors.blue = color.blue
        
        return colors
    }
    
    func save(colors: BGColor) {
        if localRealm.isEmpty{
            localRealm.beginWrite()
            localRealm.add(colors)
            try! localRealm.commitWrite()
        } else {
            localRealm.beginWrite()
            localRealm.deleteAll()
            localRealm.add(colors)
            try! localRealm.commitWrite()
        }
    }
    
}
