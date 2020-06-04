//
//  ContentView74_2.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView74_2: View {
    @State private var amount: CGFloat = 0.0
    
    var body: some View {
        VStack {
            // 模糊效果
            Image("cat")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .saturation(Double(amount)) // 饱和度，用于调整颜色的数量
                .blur(radius: (1 - amount) * 20)
            
            Slider(value: $amount)
                .padding()
        }
    }
}
