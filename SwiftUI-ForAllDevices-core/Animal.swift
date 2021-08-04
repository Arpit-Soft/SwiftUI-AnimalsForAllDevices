//
//  Animal.swift
//  SwiftUI-ForAllDevices
//
//  Created by Arpit Dixit on 04/08/21.
//

import Foundation

struct Animal: Hashable {
    let name: String
    let description: String
    let image: String
}

extension Animal {
    
    static var placeholder: Animal {
        return Animal(name: "Cat", description: "This is a cat", image: "🐈")
    }
}

