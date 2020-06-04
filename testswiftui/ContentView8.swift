//
//  ContentView8.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI


/**
 三个步骤：
 
 1创建一个符合ObservableObject协议的类。
 2用@Published标记一些属性，以便使用该类的所有视图在更改时都得到更新。
 3使用@ObservedObject属性包装器创建我们的类的实例。
 
 */

// 类遵守ObservableObject协议
class User: ObservableObject {
    // @Published 通知关注类的所有视图在类发生改变时，去重新加载
    @Published var firstName = "zhiying"
    @Published var lastName = "yuan"
}

// Codable 支持
class Person: ObservableObject, Codable {
    @Published var name = "xixi"
    
    enum CodingKeys: CodingKey {
        case name
    }
    
    required init(from decoder: Decoder) throws {
        // decoder包含了所有的数据
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}


struct ContentView8: View {
    // @ObservedObject 用于标记哪些类在改变时通知视图加载视图
    @ObservedObject var user = User()
    
    var body: some View {
        VStack {
            Text("名字是\(user.firstName)\(user.lastName)")
            
            TextField("firstName", text: $user.firstName)
            TextField("lastName", text: $user.lastName)
        }
    }
}


struct ContentView8_Previews: PreviewProvider {
    static var previews: some View {
        ContentView8()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
