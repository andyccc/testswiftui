//
//  ContentView11.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView11: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("\($0)")
                    }
                    .onDelete(perform: { indexSet in
                        numbers.remove(atOffsets: indexSet)
                    })
                }
                
                Button("添加") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                    
                    
//                    存
                    UserDefaults.standard.setValue(currentNumber, forKey: "tapCount")
//                    取（未设置有默认值）
                    let num = UserDefaults.standard.integer(forKey: "tapCount")
                    print(num)
                    
                }
            }
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView11_Previews: PreviewProvider {
    static var previews: some View {
        ContentView11()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
