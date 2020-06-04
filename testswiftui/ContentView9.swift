//
//  ContentView9.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct SecondView: View {
    // 获取全局环境变量 presentationMode
    @Environment(\.presentationMode) var secondPresentationMode
    
    var body: some View {
        Button("关闭") {
            // 通过获取到的全局环境变量，来关闭模态视图
            self.secondPresentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView9: View {
    @State private var showSheet = false
    @State private var numbers = [Int]()
    
    
    var body: some View {
        VStack {
            Button("show sheet") {
                self.showSheet.toggle()
            }
            .sheet(isPresented: $showSheet, content: {
                SecondView()
            })
            
//            List {
//                ForEach(numbers, id: \.self) {
//                    Text("\($0)")
//                }
//            }
        }
    }
}

struct ContentView9_Previews: PreviewProvider {
    static var previews: some View {
        ContentView9()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
