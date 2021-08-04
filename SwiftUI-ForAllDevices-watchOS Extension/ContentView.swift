//
//  ContentView.swift
//  SwiftUI-ForAllDevices-watchOS Extension
//
//  Created by Arpit Dixit on 04/08/21.
//

import SwiftUI

struct ContentView: View {
    
    let animals = AnimalService.getAll()
    
    var body: some View {
        
        List(animals, id: \.name) { animal in
            NavigationLink(destination: SharedDetailView(animal: animal)) {
                AnimalCell(animal: animal)
            }
        }
        .listStyle(CarouselListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AnimalCell: View {
    
    let animal: Animal
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            Text(animal.image)
                .font(.custom("Arial", size: 90))
            Text(animal.name)
        })
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}
