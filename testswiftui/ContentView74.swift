//
//  ContentView74.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI
struct ContentView74: View {
    @State private var colorCycle = 0.0
    
    var body: some View {
        VStack {
            
            Image("cat")
            
            ZStack {
                Image("cat")
                
                Rectangle()
                    .fill(Color.blue)
                    // blendMode图像混合模式 默认normal
                    .blendMode(.softLight)
                    .frame(width: 500, height: 500, alignment: .center)
            }
            
            Image("cat")
                .colorMultiply(.yellow)
        }
    }
}
