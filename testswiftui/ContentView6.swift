//
//  ContentView6.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView6: View {
    @State private var wakeUp = Date()
    @State private var newWord = ""

    func startGame() -> Void {
        
        
    }
    
    func addNewWord() -> Void {
        
    }
    
    
    
    var body: some View {
        
        
        
        
        // hour、minute通过DateComponents生成Date
        var dateComponents = DateComponents()
        dateComponents.hour = 8
        let date = Calendar.current.date(from: dateComponents)
        
        // Date通过DateComonents获取hour、minute
        let someDate = Date()
        let components = Calendar.current.dateComponents([.hour, .minute], from: someDate)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
        // Date转String
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        let dateString = dateFormatter.string(from: Date())
        print(dateString)
        
        
        
//            var rootWord:String? = nil
//            if let startWordsUrl = Bundle.main.url(forResource: "start", withExtension: "txt") {
//                if let startWords = try? String(contentsOf: startWordsUrl) {
//                    let allWords = startWords.components(separatedBy: "\n")
//                    rootWord = allWords.randomElement() ?? "silkworm"
////                    return
//                }
//            }
        
        
        
//        NavigationView {
//            VStack {
//                TextField("输入单词", text: $newWord, onCommit: addNewWord)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
//                    .autocapitalization(.none)
//
//                List(usedWords, id: \.self) {
//                    Image(systemName: "\($0.count).circle")
//                    Text($0)
//                }
//            }
//            .navigationTitle(rootWord)
//            .onAppear(perform: startGame)
//        }
        
        
        
        return VStack {
            // 有标题
            DatePicker("Please enter a date", selection: $wakeUp)
            // 无标题
            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: DatePicker.Components.date)
                .labelsHidden()
            // 无标题，有时间范围
            DatePicker("Please", selection: $wakeUp, in: Date() ... Date().addingTimeInterval(86400))
                .labelsHidden()
            DatePicker("Please", selection: $wakeUp, in: Date()...)
                .labelsHidden()
            
            
            
        }
        .padding()
    }
    
    
}




struct ContentView6_Previews: PreviewProvider {
    static var previews: some View {
        ContentView6()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
