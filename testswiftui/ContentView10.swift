//
//  ContentView10.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView10: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        VStack {
            List {
                ForEach(numbers, id: \.self) {
                    Text("\($0)")
                }
                // onDelete只能添加在ForEach上
                .onDelete(perform: { indexSet in
                    // ForEach是由numbers数组创建的，可以直接将索引集直接传给numbers数组
                    numbers.remove(atOffsets: indexSet)
                })
            }
            
            Button("添加") {
                numbers.append(currentNumber)
                currentNumber += 1
            }
        }
    }
}

struct ContentView10_Previews: PreviewProvider {
    static var previews: some View {
        ContentView10()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
