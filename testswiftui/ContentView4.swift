//
//  ContentView4.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//
import SwiftUI

struct ContentView4: View {
    @State private var selection = 0
    
    var body: some View {
        let binding = Binding(
            get: { self.selection },
            set: { self.selection = $0 }
        )
        
        return VStack {
            Picker("Select", selection: binding) {
                ForEach(1 ..< 5) {
                    Text("Item \($0)")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
//
            
            
            
            Text("\(selection)")
        }
    }
}


struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
