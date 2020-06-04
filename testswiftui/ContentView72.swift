//
//  ContentView72.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI


struct ContentView72: View {
    var body: some View {
        VStack {
            // sourceRect 相对大小和位置的CGRect 0表示“开始”，1表示“结束”
            // scale 使用比例尺绘制示例图像，0.2表示该图像的显示尺寸为正常尺寸的1/5
            Text("1111")
                .frame(width: 180, height: 180, alignment: .center)
                .border(ImagePaint(image: Image("cat"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.1), width: 20)
        }
    }
}
