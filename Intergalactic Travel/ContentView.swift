//
//  ContentView.swift
//  Intergalactic Travel
//
//  Created by Tsolmon Batjargal on 9/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Starlink(name: "Blue Star")
                    .padding()
                Starlink(name: "Red Dwarf")
                    .foregroundColor(.red)
            }
            .navigationBarTitle("Intergalactic Travel", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}

struct Starlink: View {
    let name: String
    var body: some View {
        NavigationLink("Travel to \(name)") {
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}
