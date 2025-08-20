//
//  ContentView.swift
//  TestMultiplesPantallas
//
//  Created by Cristina Gonzalez Cordova on 14/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, world!")
                NavigationLink("Ir al detalle")
                {
                   DetalleView()
                }.buttonStyle(.borderedProminent)
                    .tint(.purple)

            }.navigationBarTitle("Volver")
                .toolbar(.hidden)

        }

    }
}

#Preview {
    ContentView()
}
