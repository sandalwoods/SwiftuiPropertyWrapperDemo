//
//  TestStudent.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import SwiftUI

struct TestStudent: View {
//    @ObservedObject var student = Student()
    @StateObject var student = Student()
    @State var count = 0

    init() {
        print("init TestStudent")    //2 数据更新，每次View重新绘制，会走
    }
    var body: some View {
        VStack {
            Text("刷新CounterView计数 :\(count)")
            Button("刷新"){
                count += 1
            }
            
            Button(action: {
                student.count += 1   //3
            }) {
                VStack{
                    Text("name=\(student.name)")
                    Text("count=\(student.count)")
                    Text("+1")
                }
            }
        }
        
    }
}

struct TestStudent_Previews: PreviewProvider {
    static var previews: some View {
        TestStudent()
    }
}
