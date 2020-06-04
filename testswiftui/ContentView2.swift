//
//  MyViewModifier.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//
import SwiftUI

struct MyViewModifier: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                // 使用修饰符
                .modifyTitle()
            
            Text("Hello, World!")
                // 使用修饰符
                .modifySubTitle(text: "前缀")
        }
    }
}

struct MyViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        MyViewModifier()
    }
}

// 自定义修饰符
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 5.0))
    }
}

// 自定义修饰符，并重新构建视图
struct SubTitle: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        VStack {
            content
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding()
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 5.0))
            Text(text)
                .font(.subheadline)
                .foregroundColor(.blue)
        }
    }
}

// 扩展修饰符
extension View {
    func modifyTitle() -> some View {
        self.modifier(Title())
    }
    
    func modifySubTitle(text: String) -> some View {
        self.modifier(SubTitle(text: text))
    }
}
