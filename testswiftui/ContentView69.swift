//
//  ContentView69.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView69: View {
    @State private var petalOffset = -20.0
    @State private var petalWidth = 100.0
    
    var body: some View {
        VStack {
            Flower(petalOffset: petalOffset, petalWidth: petalWidth)
                
                .fill(
                    // 填充渐变色
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center),
                    // eoFill： 奇偶填充
                    style: FillStyle(eoFill: true)
                )
            
            
            Text("Offset")
            Slider(value: $petalOffset, in: -40 ... 40)
                .padding([.horizontal, .bottom])
            
            Text("Width")
            Slider(value: $petalWidth, in: 0 ... 100)
                .padding(.horizontal)
        }
        .padding(20)
    }
}

struct Flower: Shape {
    // 花瓣移离中心多少距离
    var petalOffset: Double = -20
    
    // 每片花瓣的宽度
    var petalWidth: Double = 100
    
    func path(in rect: CGRect) -> Path {
        // 容纳所有花瓣的路径
        var path = Path()
        
        // 从0向上计数到 pi * 2，每次移动 pi / 8
        for number in stride(from: 0, to: CGFloat.pi * 2, by: CGFloat.pi / 8) {
            // 根据循环旋转当前的花瓣
            let rotation = CGAffineTransform(rotationAngle: number)
            
            // 将花瓣移到我们视野的中心
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            
            // 使用我们的属性以及固定的Y和高度为该花瓣创建路径
            let originalPetal = Path(ellipseIn: CGRect(x: CGFloat(petalOffset), y: 0, width: CGFloat(petalWidth), height: rect.width / 2))
            
            // 将我们的旋转/位置变换应用于花瓣
            let rotatedPetal = originalPetal.applying(position)
            
            // 将其添加到我们的主路径
            path.addPath(rotatedPetal)
        }
        
        // 现在将主径 return
        return path
    }
}
