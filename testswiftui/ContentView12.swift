//
//  ContentView12.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView12: View {
    var body: some View {
        NavigationView {
            VStack {
                // GeometryReader 确保图像填充其容器视图的整个宽度
                GeometryReader(content: { geometry in
                    Image("cat")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width)
                })
                
                VStack {
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                }
                Divider().padding(.leading, 100)
                VStack {
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                }
                
                VStack {
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                }
                
                VStack {
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                }
                
                VStack {
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                }
                
                VStack {
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                    Text("哈哈哈哈哈")
                }
            }
            .navigationTitle(Text("我是标题"))
        }
    }
}

struct ContentView12_Previews: PreviewProvider {
    static var previews: some View {
        ContentView12()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
