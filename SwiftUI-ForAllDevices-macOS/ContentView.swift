//
//  ContentView.swift
//  SwiftUI-ForAllDevices-macOS
//
//  Created by Arpit Dixit on 04/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedAnimal: Animal? = nil

    var body: some View {
        NavigationView {
            GeometryReader { g in
                AnimalList(selectedAnimal: $selectedAnimal)
            }
            GeometryReader { g in
                SharedDetailView(animal: selectedAnimal ?? Animal.placeholder)
            }
            
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AnimalList: View {
    
    let animals = AnimalService.getAll()
    @Binding var selectedAnimal: Animal?
    
    var body: some View {
        List(animals, id: \.name) { animal in
            VStack {
                Text(animal.image)
                    .font(.custom("Arial", size: 90))
                Text(animal.name)
                    .font(.title)
            }
            .onTapGesture {
                selectedAnimal = animal
            }
        }
    }
}
