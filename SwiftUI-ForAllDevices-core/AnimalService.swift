//
//  AnimalService.swift
//  SwiftUI-ForAllDevices
//
//  Created by Arpit Dixit on 04/08/21.
//

import Foundation

class AnimalService {
    
    static func getAll() -> [Animal] {
        return [
            Animal(name: "Tiger", description: "This is tiger", image: "🐆"),
            Animal(name: "Rat", description: "This is rat", image: "🐀"),
            Animal(name: "Giraffe", description: "This is giraffe", image: "🦒"),
            Animal(name: "Cat", description: "This is cat", image: "🐈")
        ]
    }
}
