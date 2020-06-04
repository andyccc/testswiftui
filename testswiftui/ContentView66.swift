//
//  ContentView66.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView66: View {
    var body: some View {
        NavigationView {
            // List + ForEach 会在可见的时候才创建
            List {
                ForEach(0..<100) {
                    Text("\($0) _")
                }
                .frame(maxWidth: .infinity)
            }
            .navigationTitle(Text("标题"))
        }
    }
}

struct ContentView66_Previews: PreviewProvider {
    static var previews: some View {
        ContentView66()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
