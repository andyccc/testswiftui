//
//  LazyVHGrid.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//
import SwiftUI

struct ContentView3: View {

    let text = (1 ... 10).map { "Hello\($0)" }
    // 以最小宽度160斤可能在一行放入grid
    let columns = [GridItem(.adaptive(minimum: 80))]
    // 每行三个grids,大小灵活分配
    let columnsFixed = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    // 第一个100固定，第二个尽量填满
    let columnsFixed100 = [
        GridItem(.fixed(100)),
        GridItem(.flexible()),
    ]

    var rows: [GridItem] =
        Array(repeating: .init(.fixed(20)), count: 2)

    let agents = ["Cyril", "Lana", "Pam", "Sterling"]

    
    var body: some View {
        ScrollView {
            Section(header: Text("最小160")) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(text, id: \.self) {
                        item in
                        Text(item)
                    }
                }
            }
            
            Section(header: Text("每行三个Grid")) {
                LazyVGrid(columns: columnsFixed, spacing: 20) {
                    ForEach(text, id: \.self) {
                        item in
                        Text(item)
                    }
                }
            }
            
            Section(header: Text("第一个固定100")) {
                LazyVGrid(columns: columnsFixed100, spacing: 20) {
                    ForEach(text, id: \.self) {
                        item in
                        Button(item) {
                            print("itme pressed")
                        }
                    }
                }
            }
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, alignment: .top) {
                    ForEach(0 ... 79, id: \.self) {
                        let codepoint = $0 + 0x1F600
                        let codepointString = String(format: "%02X", codepoint)
                        Text("\(codepointString)")
                            .font(.footnote)
                        let emoji = String(Character(UnicodeScalar(codepoint)!))
                        Text("\(emoji)")
                            .font(.largeTitle)
                    }
                }
            }
            
            VStack {
                ForEach(agents, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}


struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
        //            .previewLayout(.fixed(width: 300, height: 70))
    }
}
