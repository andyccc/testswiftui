//
//  ContentView.swift
//  testswiftui
//
//  Created by yans on 2020/6/4.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}


struct ContentView: View {
    
    @State private var showAlert = false
    var body: some View {
//        Text("Hello, world!")
//            .font(.title)
//            .foregroundColor(.yellow)
//            .bold()
//            .italic()
        
        Form {
            VStack {
                // 线性渐变 LinearGradient 沿一个方向运行，因此我们为其提供了一个起点和终点
                LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .leading, endPoint: .trailing)
                // 径向渐变 RadialGradient 以圆形向外移动，因此，我们没有指定方向，而是指定了起点和终点半径——颜色应从圆心到圆心的距离开始和停止变化
                RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
                // 角度渐变 AngularGradient，尽管您可能听说过其他地方将其称为圆锥形或圆锥形渐变。这使颜色围绕一个圆圈循环而不是向外辐射
                AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            }
            
            VStack {
                Button(action: {
                    showAlert = true
                }) {
                    Text("按钮")
                }
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("标题"), message: Text("文本内容"), primaryButton: .cancel {
                        print("点击取消")
                    }, secondaryButton: .default(Text("确定")) {
                        print("点击确定")
                    })
                })
            }
            
            Button(action: {}, label: {
                Image("cat")
                    // 边缘形状
                    .clipShape(Circle())
                    // 描边
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 2))
                    // 阴影
                    .shadow(color: .blue, radius: 20)
            })
            
            Image("cat")
                // 边缘形状
                .clipShape(Circle())
                // 描边
                .overlay(Circle().stroke(Color.yellow, lineWidth: 2))
                // 阴影
                .shadow(color: .blue, radius: 20)
            
            NavigationView {
                Form {
                    Section {
                        Text("Hello World")
                    }
                }
                .navigationBarTitle("SwiftUI", displayMode: .inline)
            }
            
            Section(header: Text("Section 1 header").bold(), footer: Text("Section 1 footer")) {
                Text("Placeholder 1")
                Text("Placeholder 2")
                Text("Placeholder 3")
                Group() {
                    Text("Placeholder 1")
                    Text("Placeholder 2")
                    Text("Placeholder 3")
                    Text("Placeholder 4")
                    Text("Placeholder 5")
                    Text("Placeholder 6")
                    Text("Placeholder 7")
                    Text("Placeholder 8")
                    Text("Placeholder 9")
                    Text("Placeholder 10")
                }
            }
            
            Group() {
                Text("Placeholder 1")
                Text("Placeholder 2")
            }
        }
        
    }
    
    
}




//struct LandmarkRow_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewLayout(.fixed(width: 300, height: 70))
    }
}
