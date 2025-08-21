//
//  ContentView.swift
//  TestMultiplesPantallas
//
//  Created by Cristina Gonzalez Cordova on 14/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var isValid = false
    @State private var username = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Pon tu username:")
                TextField("username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 300)
                    .padding(.vertical, 10)
                
                Button("Ir a detalle"){
                    if username.isEmpty {
                        isValid = false
                        showAlert.toggle()
                    }else{
                        isValid = true
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                .alert("Introduce un username", isPresented: $showAlert) {
                           Button("OK") {}
                }
                .navigationDestination(isPresented: $isValid){
                    //Llamada a la siguiente pantalla
                    DetalleView()
                }
                
               

            }.navigationBarTitle("Volver")
                .toolbar(.hidden)
                

        }

    }
}

#Preview {
    ContentView()
}
