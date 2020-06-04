//
//  ContentView81.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            self.isOn.toggle()
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: isOn ? onColors : offColors), startPoint: .leading, endPoint: .trailing))
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: 10)
    }
}


struct ContentView81: View {
    @State private var rememberMe = false
    var body: some View {
        NavigationView {
            List {
                PushButton(title: "Remember Me", isOn: $rememberMe)
                Text(rememberMe ? "开启": "关闭")
            }
            .navigationBarTitle("Cupcake Corner")
        }
    }
}
