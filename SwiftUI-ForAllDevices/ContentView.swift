//
//  ContentView.swift
//  SwiftUI-ForAllDevices
//
//  Created by Arpit Dixit on 04/08/21.
//

import SwiftUI

struct ContentView: View {
    
    private let animals = AnimalService.getAll()
    
    var body: some View {
        NavigationView {
            List(animals, id: \.name) { animal in
                NavigationLink(destination: SharedDetailView(animal: animal)) {
                    Text(animal.image)
                        .font(.custom("Arial", size: 90))
                    Text(animal.name)
                        .font(.title)
                }
            }
            .navigationTitle("Animals")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
