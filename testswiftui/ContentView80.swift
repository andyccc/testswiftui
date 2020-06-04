//
//  ContentView80.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView80: View {
    @State private var username = ""
    @State private var email = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            Section {
                Button("Create account") {
                    print("Creating account…")
                }
                .disabled(username.isEmpty || email.isEmpty)
//                .disabled(false)
            }
        }
    }
}
