//
//  SharedDetailView.swift
//  SwiftUI-ForAllDevices
//
//  Created by Arpit Dixit on 04/08/21.
//

import SwiftUI

struct SharedDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        VStack {
            Text(animal.image)
                .font(.custom("Arial", size: 100))
                .padding()
            Text(animal.name)
                .font(.title)
                .foregroundColor(.primary)
            Text(animal.description)
                .foregroundColor(.secondary)
        }
    }
}

struct SharedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SharedDetailView(animal: Animal.placeholder)
    }
}
