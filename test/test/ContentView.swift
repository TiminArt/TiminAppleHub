//
//  ContentView.swift
//  test
//
//  Created by Артемий Тимин on 17.01.2024.
//

import SwiftUI
struct ContentView: View {
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            Image("")
            TextField("Введите своё имя", text: $name)
                .padding(20)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            
            ZStack {
                let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
                let gradient = AngularGradient(gradient: colors, center: .center)

                Circle()
                    .strokeBorder(gradient, lineWidth: 20)
                    .frame(width: 380, height: 400)
                
                Text("Привет, \(name)! Надеюсь, сегодняшняя погода Вас не разачарует!")
                    .padding(38)
                    .multilineTextAlignment(.center)
            }
    
        }
    }
}

#Preview {
    ContentView()
}



