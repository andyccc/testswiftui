//
//  ContentView67.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView67: View {
    var body: some View {
        HStack(spacing: 16) {
            Text("Hello")
            Text("World")
            // 布局优先级layoutPriority，所有视图的默认优先级均为0
            Text("哈哈哈哈哈哈哈")
                .layoutPriority(1)
        }
        .font(.largeTitle)
        .lineLimit(2)
    }
}


struct ContentView67_Previews: PreviewProvider {
    static var previews: some View {
        ContentView67()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
