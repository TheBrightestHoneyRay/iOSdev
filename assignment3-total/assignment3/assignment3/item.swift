//
//  item.swift
//  assignment3
//
//  Created by Балнур Бектасова on 25.09.2024.
//

import Foundation
import SwiftData

@Model
class Item{
    var name:String
    
    init(name: String) {
        self.name = name
    }
}
