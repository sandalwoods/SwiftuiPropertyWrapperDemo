//
//  Student.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import Foundation

class Student: ObservableObject {
    @Published var name:String = "xiaoming"
    @Published var count:Int = 0
    
    init() {
        print("Student init")  //1 只走一次
    }
}
