//
//  ContentView5.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView5: View {
    @State private var agreedToTerms = false
    @State private var agreedToPrivacyPolicy = false
    @State private var agreedToEmails = false
    
    @State private var wakeUp = Date()

    var body: some View {
        let agreeToAll = Binding<Bool>(
            get: {
                self.agreedToTerms && self.agreedToPrivacyPolicy && self.agreedToEmails
            },
            set: {
                self.agreedToTerms = $0
                self.agreedToPrivacyPolicy = $0
                self.agreedToEmails = $0
            }
        )
        
        return VStack {
            Toggle(isOn: $agreedToTerms) {
                Text("agreedToTerms")
            }
            
            Toggle(isOn: $agreedToPrivacyPolicy) {
                Text("agreedToPrivacyPolicy")
            }
            
            Toggle(isOn: $agreedToEmails) {
                Text("agreedToEmails")
            }
            
            Toggle(isOn: agreeToAll) {
                Text("agreeToAll")
            }
            
            
            
            // 有标题
            DatePicker("Please enter a date", selection: $wakeUp)
            // 无标题
            DatePicker("Please enter a date", selection: $wakeUp)
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



struct ContentView5_Previews: PreviewProvider {
    static var previews: some View {
        ContentView5()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
