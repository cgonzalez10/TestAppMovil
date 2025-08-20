//
//  DetalleView.swift
//  TestMultiplesPantallas
//
//  Created by Cristina Gonzalez Cordova on 14/08/25.
//

import SwiftUI

struct DetalleView: View {
    var body: some View {
        VStack{
            Text("Esta es la segunda pantalla.")
                .foregroundStyle(.purple)
                .fontWeight(.bold)
            Image(systemName: "gamecontroller.fill")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .foregroundStyle(.purple)
        }.toolbar(.hidden)
    }
}

#Preview {
    DetalleView()
}
