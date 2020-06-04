//
//  ContentView68.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import Foundation
import SwiftUI

struct ContentView68_Previews: PreviewProvider {
    static var previews: some View {
        ContentView68()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}

struct ContentView68: View {
    var body: some View {
        Path({ path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
        })
        // style - StrokeStyle用来控制每条线的连接方式
        .stroke(Color.blue.opacity(0.5), style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: 20, dash: [15], dashPhase: 55))

        Circle()
            .stroke(Color.blue, lineWidth: 4)
            .padding(100)
        
    }
}
