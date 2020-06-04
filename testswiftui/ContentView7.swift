//
//  ContentView7.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI

struct ContentView7: View {
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero

    var body: some View {
        VStack {
            Button("Tap Me") {
                self.enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? Color.blue : Color.red)
            .animation(.default) // 针对颜色的动画
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.interpolatingSpring(stiffness: 10, damping: 1)) // 针对形状的动画
            
            
            LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                // 视图位置改变
                .offset(dragAmount)
                // 添加拖动手势
                .gesture(
                    DragGesture()
                        .onChanged {
                            // 实时根据手势位置改变视图的位置
                            self.dragAmount = $0.translation
                        }
                        .onEnded { _ in
                            // 弹性动画归0
                            withAnimation(.spring()) {
                                self.dragAmount = .zero
                            }
                        }
                
                )
        }
    }
}



struct ContentView7_Previews: PreviewProvider {
    static var previews: some View {
        ContentView7()
        // .previewLayout(.fixed(width: 300, height: 70))
    }
}
